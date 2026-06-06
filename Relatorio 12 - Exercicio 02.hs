-- Definição do tipo Item
data Item = Item {
    nomeItem     :: String,
    categoriaItem :: String,
    precoItem    :: Double
} deriving Show

-- Status da compra
data StatusCompra = Pendente | Concluida | Cancelada
    deriving Show

-- Tipo Compra
data Compra = Compra {
    itens  :: [Item],
    status :: StatusCompra
} deriving Show

-- Soma dos preços dos itens
totalItens :: [Item] -> Double
totalItens xs = sum (map precoItem xs)

-- Valor final da compra
valorFinal :: Compra -> Double
valorFinal (Compra xs Cancelada) = 0.0
valorFinal (Compra xs _) 
    | total > 200 = total * 0.9   -- aplica 10% de desconto
    | otherwise   = total
    where total = totalItens xs

-- Função principal
main :: IO ()
main = do
    let espada   = Item "Espada de Ferro" "Arma" 150.0
    let escudo   = Item "Escudo de Madeira" "Defesa" 80.0
    let poção    = Item "Poção de Vida" "Consumível" 30.0

    let compra1 = Compra [espada, escudo, poção] Concluida
    let compra2 = Compra [poção] Cancelada

    putStrLn ("Valor final da compra 1: " ++ show (valorFinal compra1))
    putStrLn ("Valor final da compra 2: " ++ show (valorFinal compra2))