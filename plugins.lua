local plugins = require("nix-plugins")

for _, path in ipairs(plugins) do
    hl.plugin.load(path)
end
