print("Hola mundo")
-- Global Variabl
HELLO = "Hi people"

-- Local variable

local variable_local = "soy local"

-- Es un lenguaje dinamico


-- stdout -> print("hi")

-- No existern las clases

-- Tiene funciones y tablas

-- FUNCTION - son de primera clase. Se pueden pasar a otras funciones como parametros.

function doMath(n)

end

--[[
        TABLAS  - Es una matriz asociativa. Lo que significa que el indice en la matriz
        puede reemplazarce con diferentes valores.
        Arranca el indice con 1 !!! (Muy loco)
--]]

array = { "Landing", "on", "Lua" }

-- Tabla - Diccionario 
-- Se crea dando a las claves un valor de cadena.
dict = {
        ['moon'] = "🌙",
        ['cheese'] = "🧀"
}

-- for loop

for k,v in pairs(dict) do
        print(k,v)
end


-- El lenguaje en un solo subproceso . Single thread.
-- Oeri oidenis ysar cirrytubas para pausar y reabydar la función
-- Couroutine suspend y resume code

co = coroutine.create(function ()

        coroutine.yield('beginning') -- pause
        coroutine.yield('middle')
        return "end"
        
end)

coroutine.resume(co) --beginning
coroutine.resume(co) --middle
coroutine.resume(co) --end
--coroutine.resume(co) -- ERROR

