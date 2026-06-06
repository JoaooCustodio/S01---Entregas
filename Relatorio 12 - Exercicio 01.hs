-- Definição do tipo Bebida
data Bebida = Bebida {
    nome  :: String,
    tipo  :: String,
    preco :: Double
} deriving Show

-- Definição do status do pedido
data StatusPedido = Aberto | Entregue | Cancelado
    deriving Show

-- Definição do tipo Pedido
data Pedido = Pedido {
    bebidas :: [Bebida],
    status  :: StatusPedido
} deriving Show

-- Função para calcular o valor total do pedido
valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido bs Cancelado) = 0.0
valorTotalPedido (Pedido bs _) = sum [preco b | b <- bs]

-- Função para pegar a primeira bebida
primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida no pedido."
primeiraBebida (Pedido (b:_) _) = nome b

-- Função principal
main :: IO ()
main = do
    let cafe = Bebida "Café" "Quente" 5.0
    let suco = Bebida "Suco de Laranja" "Gelado" 7.0
    let cha  = Bebida "Chá Verde" "Quente" 6.0

    let pedido1 = Pedido [cafe, suco] Entregue
    let pedido2 = Pedido [cha] Cancelado

    putStrLn ("Valor total do pedido 1: " ++ show (valorTotalPedido pedido1))
    putStrLn ("Primeira bebida do pedido 1: " ++ primeiraBebida pedido1)

    putStrLn ("Valor total do pedido 2: " ++ show (valorTotalPedido pedido2))
    putStrLn ("Primeira bebida do pedido 2: " ++ primeiraBebida pedido2)
