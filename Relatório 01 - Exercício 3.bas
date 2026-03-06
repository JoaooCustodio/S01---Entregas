DIM reais AS DOUBLE
DIM dolares AS DOUBLE
DIM euros AS DOUBLE

CONST TAXA_DOLAR AS DOUBLE = 5.00
CONST TAXA_EURO  AS DOUBLE = 5.40

PRINT "Digite um valor em reais (R$): ";
INPUT reais

dolares = reais / TAXA_DOLAR
euros   = reais / TAXA_EURO

PRINT
PRINT "Valor em reais (R$): "; reais
PRINT "Valor em dolares (US$): "; dolares
PRINT "Valor em euros (EUR): "; euros

END