DIM distancia AS DOUBLE
DIM litros AS DOUBLE
DIM consumo AS DOUBLE

PRINT "Digite a distancia percorrida (km): ";
INPUT distancia

PRINT "Digite a quantidade de combustivel gasta (litros): ";
INPUT litros

consumo = distancia / litros

PRINT
PRINT "O consumo medio (km/litro) = "; consumo

END