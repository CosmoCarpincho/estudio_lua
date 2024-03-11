-- Concatenacion
local no_ejecutar = function ()
    local nombre = "Cosmo"
    local saludo = "¿Como andas " .. nombre .. " ?"
    
    print(saludo)
    
    -- local punto = {
    --         x = 1,
    --         y = 2,
    --         retorno = function()
    --                 return x, y
    --         end
    -- }
    
    
    -- x1, y1 = punto:retorno()
    
    -- print(x1)
    -- print(y1)
    
    -- if then else
    if a < 0 then a = 0 end
    
    if a < b then return a else return b end
    
    if line > MAXLINES then
            showpage()
            line = 0
    end
    
    if op == "+" then
        r = a + b
    elseif op == "-" then
        r = a - b
    elseif op == "*" then
        r = a*b
    elseif op == "/" then
        r = a/b
    else
        error("invalid operation")
    end
    
    
    -- while
    local i = 1
    while a[i] do
        print(a[i])
        i = i + 1
    end
    
    -- repeat
    repeat
        line = io.read()
    until line ~= ""
    print(line)
end


--[[ for numerico
    
    --for exp1,exp2,exp3 --- (numeric)
    for i=1, 10, 1 do
        print(i)
    end
    
    -- for las expresiones se evaluan una vez antes de arrancar
    doble_iteraciones = function (n)
        return 2 * n
    end
    
    for i=1, doble_iteraciones(4) do
        print("Doble iteraciones " .. i)
    end
    
    
    -- en for i es interno si queres guardarlo usar variable externa
    
    a = {"Hola", "como", "anda", "la", "gente", "linda"}
    a["n"] = 10
    
    local found = nil
    for i=1, a.n do
        print("Entre")
        if a[i] == "la" then
            found = i
            break
        end
    end
    
    print(found)
--]]

---[[ Generic for
--[=[
-- este no funciona el ipairs
a = {nombre="Cosmo", apellido="Carpincho", lenguajes="C, C#, Lua"}
-- este funciona
b = {"hola", "que", "tal"}

-- print all values of array 'a'
for i,v in ipairs(b) do print(v) end

-- no funciona
for i,v in ipairs(a) do print(v) end



for k in pairs(a) do print(k) end
--]=]

days = {"Sunday", "Monday", "Tuesday",
 "Wedneday", "Thursday", "Friday","Saturday" }

revDays = {}
for i,v in ipairs(days) do
    revDays[v] = i
end

print(revDays["Sunday"])
print(revDays["Thursday"])

--]]

-- print(unpack{10,20,30} --> 10 20 30)
funtion unpack (t, i)
    i = i or 1
    if t[i] ~= nil then
        return t[i], unpack(t, i + 1)
    end
end



