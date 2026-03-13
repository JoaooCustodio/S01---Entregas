io.write("Digite a quantidade de valores (N): ")
local N = tonumber(io.read())

local valores = {}

for i = 1, N do
    io.write("Digite o valor " .. i .. ": ")
    valores[i] = tonumber(io.read())
end

local maior = valores[1]

for i = 2, N do
    if valores[i] > maior then
        maior = valores[i]
    end
end

print("O maior valor da tabela é: " .. maior)