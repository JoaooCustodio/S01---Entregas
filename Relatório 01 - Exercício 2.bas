DIM senha AS STRING
DIM tentativa AS STRING

senha = "1234"

PRINT "Digite a senha: ";
INPUT tentativa

WHILE tentativa <> senha
    PRINT "Senha incorreta. Tente novamente."
    PRINT "Digite a senha: ";
    INPUT tentativa
WEND

PRINT "Acesso liberado!"
END