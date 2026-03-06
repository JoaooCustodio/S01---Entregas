DIM nota1 AS DOUBLE, nota2 AS DOUBLE, nota3 AS DOUBLE
DIM peso1 AS DOUBLE, peso2 AS DOUBLE, peso3 AS DOUBLE

DIM media AS DOUBLE, somaPesos AS DOUBLE

PRINT "Digite a nota 1: ";
INPUT nota1
PRINT "Digite o peso da nota 1: ";
INPUT peso1

PRINT "Digite a nota 2: ";
INPUT nota2
PRINT "Digite o peso da nota 2: ";
INPUT peso2

PRINT "Digite a nota 3: ";
INPUT nota3
PRINT "Digite o peso da nota 3: ";
INPUT peso3

somaPesos = peso1 + peso2 + peso3

media = (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / somaPesos

PRINT
PRINT "Media ponderada = "; media

IF media > 70 THEN
    PRINT "Aprovado direto"
ELSE
    PRINT "Reprovado direto"
END IF