io.write("Digite a quantidade de valores (N): ")
local N = tonumber(io.read())

local valores = {}

for i = 1, N do
    io.write("Digite o valor " .. i .. ": ")
    valores[i] = tonumber(io.read())
end

local impares = {}

for i = 1, N do
    if valores[i] % 2 ~= 0 then
        table.insert(impares, valores[i])
    end
end

print("\nTabela contendo apenas os números ímpares:")
for i = 1, #impares do
    print(impares[i])
end