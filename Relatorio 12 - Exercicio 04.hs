-- Definição do tipo Servico
data Servico = Servico {
    nomeServico :: String,
    tipoServico :: String,
    precoServico :: Double
} deriving Show

-- Status do atendimento
data StatusAtendimento = EmAndamento | Finalizado | Cancelado
    deriving Show

-- Tipo Atendimento
data Atendimento = Atendimento {
    servicos :: [Servico],
    status   :: StatusAtendimento
} deriving Show

-- Soma dos preços dos serviços
totalServicos :: [Servico] -> Double
totalServicos xs = sum (map precoServico xs)

-- Valor final do atendimento
valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento xs Cancelado) = 0.0
valorFinalAtendimento (Atendimento xs _) 
    | length xs > 3 = total * 1.25   -- acréscimo de 25%
    | otherwise     = total
    where total = totalServicos xs

-- Primeiro serviço
primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) = "Nenhum serviço registrado."
primeiroServico (Atendimento (s:_) _) = nomeServico s

-- Função principal
main :: IO ()
main = do
    let banho   = Servico "Banho Relaxante" "Spa" 100.0
    let massagem = Servico "Massagem" "Spa" 150.0
    let sauna   = Servico "Sauna" "Relaxamento" 80.0
    let refeicao = Servico "Refeição Especial" "Culinária" 120.0

    let atendimento1 = Atendimento [banho, massagem, sauna] Finalizado
    let atendimento2 = Atendimento [banho, massagem, sauna, refeicao] EmAndamento

    putStrLn ("Atendimento 1 - Valor final: " ++ show (valorFinalAtendimento atendimento1))
    putStrLn ("Primeiro serviço: " ++ primeiroServico atendimento1)

    putStrLn ("Atendimento 2 - Valor final: " ++ show (valorFinalAtendimento atendimento2))
    putStrLn ("Primeiro serviço: " ++ primeiroServico atendimento2)