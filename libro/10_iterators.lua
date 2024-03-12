function list_iter(t)
    local i = 0
    --local n = table.getn(t)
    local n = #t
    return function()
        i = i + 1
        if i <= n then return t[i] end
    end
end

local t = { 10, 20, 30 }
local iter = list_iter(t)

while true do
    local element = iter()
    if element == nil then break end
    print(element)
end

-- generic for
local t2 = { 100, 200, 300 }
for element in list_iter(t) do
    print(element)
end

--
function allwords()
    local line = io.read()                    -- current line
    local pos = 1                             -- current position in the line
    return function()
        while line do                         -- repeat while there are lines
            local s, e = string.find(line, "%w+", pos)
            if s then                         -- found a word?
                pos = e + 1                   -- next position is after this word
                return string.sub(line, s, e) -- return the word
            else
                line = io.read()              -- word not found; try next line
                pos = 1                       -- restart from firs position
            end
            return nil                        -- no more lines: end of traversal
        end
    end
end

mis_palabras = allwords()

print(mis_palabras())
print(mis_palabras())
print(mis_palabras())
print(mis_palabras())
print(mis_palabras())
print(mis_palabras())

for word in allwords() do
    print(word)
end

for k, v in pairs(t) do
    print(k, v)
end
