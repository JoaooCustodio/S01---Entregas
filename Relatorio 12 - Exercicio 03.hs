-- Definição do tipo Banda
data Banda = Banda {
    nomeBanda  :: String,
    genero     :: String,
    cache      :: Double
} deriving Show

-- Status do evento
data StatusEvento = Ativo | Encerrado | Cancelado
    deriving Show

-- Tipo Evento
data Evento = Evento {
    bandas :: [Banda],
    status :: StatusEvento
} deriving Show

-- Cálculo do custo total do evento
custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento bs Cancelado) = 0.0
custoTotalEvento (Evento bs _) = total * 1.2
    where total = sum [cache b | b <- bs]

-- Banda de abertura
bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda na abertura."
bandaAbertura (Evento (b:_) _) = nomeBanda b

-- Banda de encerramento
bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda no encerramento."
bandaEncerramento (Evento bs _) = nomeBanda (last bs)

-- Função principal
main :: IO ()
main = do
    let rock   = Banda "Rockers" "Rock" 5000.0
    let jazz   = Banda "Smooth Jazz" "Jazz" 3000.0
    let pop    = Banda "Pop Stars" "Pop" 4000.0

    let evento1 = Evento [rock, jazz, pop] Ativo
    let evento2 = Evento [jazz, pop] Encerrado
    let evento3 = Evento [rock] Cancelado

    putStrLn ("Evento 1 - Custo: " ++ show (custoTotalEvento evento1))
    putStrLn ("Abertura: " ++ bandaAbertura evento1)
    putStrLn ("Encerramento: " ++ bandaEncerramento evento1)

    putStrLn ("Evento 2 - Custo: " ++ show (custoTotalEvento evento2))
    putStrLn ("Abertura: " ++ bandaAbertura evento2)
    putStrLn ("Encerramento: " ++ bandaEncerramento evento2)

    putStrLn ("Evento 3 - Custo: " ++ show (custoTotalEvento evento3))
    putStrLn ("Abertura: " ++ bandaAbertura evento3)
    putStrLn ("Encerramento: " ++ bandaEncerramento evento3)