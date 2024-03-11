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


funtion fwrite (fmt, ...)
    return io.write(string.format(fmt, unpack(arg)))
end