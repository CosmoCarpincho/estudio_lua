--[[
6.1 - Closures
]]
names = { "Peter", "Paul", "Mary" }
grades = { Mary = 10, Paul = 7, Peter = 8 }

table.sort(names, function(n1, n2)
    return grades[n1] > grades[n2] -- compare the grades
end)

function sortbygrade(names, grades)
    table.sort(names,
        function(n1, n2)
            return grades[n1] > grades[n2] -- compare the grades
        end
    )
end

function newCounter()
    local i = 0
    return function()
        i = i + 1
        return i
    end
end

c1 = newCounter()
c2 = newCounter()
print(c1()) --> 1
print(c1()) --> 2
print(c2()) --> 1


function digitButton(digit)
    return Button { label = digit,
        action = function()
            add_to_display(digit)
        end }
end

-- redefinir funciones
do
    local oldSin = math.sin
    math.sin = function(x)
        return oldSin(x * math.pi / 180)
    end
end

-- create sandboxes (entornos seguros)
-- ej restringir los archivos a los que puede acceder un programa
-- redefiniendo open function (from io library)

do
    local oldOpen = io.open
    io.open = function(filename, mode)
        if access_OK(filename, mode) then
            return oldOpen(filename, mode)
        else
            return nil, "access denied"
        end
    end
end
