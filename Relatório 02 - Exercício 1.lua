io.write("Digite M (inicio do intervalo): ")
local M = tonumber(io.read())

io.write("Digite N (fim do intervalo): ")
local N = tonumber(io.read())

io.write("Digite X (numero da tabuada): ")
local X = tonumber(io.read())
if X == nil then
    print("Entrada invalida: X deve ser inteiro.")
    os.exit()
end

print(string.format("\nTabuada de %d no intervalo [%d, %d]:", X, M, N))
for i = M, N do
    local resultado = X * i
    print(string.format("%d x %d = %d", X, i, resultado))
end