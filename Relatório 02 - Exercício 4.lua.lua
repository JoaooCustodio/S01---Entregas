local function somar(a, b)
    return a + b
end

local function subtrair(a, b)
    return a - b
end

local function multiplicar(a, b)
    return a * b
end

local function dividir(a, b)
    return a / b
end

function calculadora(a, b, operador)
    if operador == "+" then
        return somar(a, b)
    elseif operador == "-" then
        return subtrair(a, b)
    elseif operador == "*" then
        return multiplicar(a, b)
    elseif operador == "/" then
        return dividir(a, b)
    else
        return "Erro: operador inválido!"
    end
end

io.write("Digite o primeiro número: ")
local num1 = tonumber(io.read())

io.write("Digite o segundo número: ")
local num2 = tonumber(io.read())

io.write("Digite o operador (+, -, *, /): ")
local op = io.read()

local resultado = calculadora(num1, num2, op)

print("Resultado: " .. tostring(resultado))