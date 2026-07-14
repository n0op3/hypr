require("utils")

function Todo(skip_check)
    local todolist = os.getenv("HOME") .. "/Documents/notes/todo.txt"
    if skip_check or not File_empty(todolist) then
        if Read_command_output("pidof tuxedo") then
            os.execute("killall tuxedo")
        else
            Terminal("tuxedo " .. todolist, "floating-big")
        end
    end
end
