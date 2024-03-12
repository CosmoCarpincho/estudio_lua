--

local Lib = {}
Lib.foo = function(x, y) return x + y end
Lib.goo = function(x, y) return x - y end

-- use constructors

local Lib2 = {
    foo2 = function(x, y) return x + y end,
    goo2 = function(x, y) return x - y end
}


-- another syntax

local Lib3 = {}
function Lib3.foo3(x, y)
    return x + y
end

function Lib3.goo3(x, y)
    return x - y
end

-- Lexical scoping

do
    local concatenar = function(nombre, apellido)
        return nombre .. " " .. apellido
    end

    local saludar = function(nombre, apellido)
        return "Buenos dias" .. "" .. concatenar(nombre, apellido)
    end

    print(saludar("Cosmo", "Carpincho"))
end

-- Poper Tail Calls
function f(x)
    return g(x)
end
    
end