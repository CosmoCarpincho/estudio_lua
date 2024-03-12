-- variable number of arguments

printResult = ""

function print (...)
    for i, v in ipairs(arg) do
        printResult = printResutl .. tostring(v) .. "\t"
    end
    printResutl = printResutl .. "\n"
end


local _, x = string.find(s, p)
-- now use x

print(string.find("hello hello", " hel"))  --> 6 9
print(select(1, string.find("hello hello", " hel"))) --> 6
print(select(2, string.find("hello hello", " hel"))) --> 9

function select (n, ...)
    return arg[n]
end


function fwrite (fmt, ...)
    return io.write(string.format(fmt, unpack(arg)))
end

w = Window{ x=0, y=0, width=300, height=200,
            title = "Lua", background="blue",
            border = true
}


funtion Windows (options)
    -- check mandatory options
    if type(options.title) ~= "string" then
        error("no title")
    elseif type(options.width) ~= "number" then
        error("no width")
    elseif type(options.height) ~= "number" then
        error("no height")
    end

    -- everything else is optional
    _Window(options.title,
            options.x or 0,     -- default value
            options.y or 0,     -- default value
            options.width, options.heigth,
            options.backgorund or "white", -- default
            options.border      -- default is false (nill)
)
end

network = {
    {name = "grauna", IP = "210.26.30.34"},
    {name = "arraial", IP = "220.26.30.23"},
    {name = "lua", IP = "210.26.23.12"},
    {name = "derain", IP = "210.26.23.20"}
}

table.sort(network,
    function (a,b)
        return (a.name > b.name)
    end
)

