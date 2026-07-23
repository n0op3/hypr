#!/usr/bin/env bash
set -euo pipefail

ANKI_CONNECT="http://localhost:8765"

anki_request() {
    curl -s \
        -X POST \
        -H "Content-Type: application/json" \
        -d "$1" \
        "$ANKI_CONNECT"
}

anki_request_payload() {
    curl -s \
        -X POST \
        -H "Content-Type: application/json" \
        --data-binary @"$1" \
        "$ANKI_CONNECT"
}

save_screenshot() {
    grimblast save area $1
}

base64_screenshot() {
    save_screenshot - | base64 -w 0
}

create_payload() {
    payload=$(mktemp)
    cat > "$payload"
    echo "$payload"
}

echo "Finding the latest note..."

note_id=$(anki_request '{
    "action": "findNotes",
    "version": 6,
    "params": {
        "query": "added:1"
    }
}' | jq .result[-1])

if [ "$note_id" = "null" ]; then
    echo "No latest note found."
    exit 1
fi

echo "Note ID: $note_id"
echo "Requesting screenshot"

tmpfile=$(mktemp --suffix=.png)
save_screenshot $tmpfile

base64 -w 0 "$tmpfile" > "${tmpfile}.base64"

payload_file=$(jq -n \
  --arg filename "mining-image-${note_id}.png" \
  --rawfile data "${tmpfile}.base64" \
  '{
    action: "storeMediaFile",
    version: 6,
    params: {
      filename: $filename,
      data: $data
    }
  }' | create_payload)

echo Payload: $payload_file

anki_request_payload $payload_file > /dev/null

anki_request "$(jq -n \
  --arg note_id $note_id \
  '{
    action: "updateNoteFields",
    version: 6,
    params: {
      note: {
        id: ($note_id | tonumber),
        fields: {
          Picture: ("<img src=\"mining-image-" + $note_id + ".png\">")
        }
      }
    }
  }'
)" > /dev/null
