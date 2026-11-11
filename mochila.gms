
Sets
  i /1, 2/
  j /1, 2, 3, 4, 5, 6, 7, 8, 9, 10/;

*⁠beneficios (2) y pesos (1)
Table c(i, j)
    1    2    3    4    5    6    7    8    9    10
1 100  155   50  112   70   80   60  118  110   55
2 1741 1622 1016 1264 1305 1389 1797 1330 1559 1578;

Binary Variable
  y(j)  '1 si se elige la columna j, 0 si no';

Variable
  z;

Scalar
   cap /700/;

Equations
  obj   'FO'
  r1    'restriccion de capacidad';

obj.. z =e= sum(j, y(j) * c('2', j));
r1..  sum(j, y(j) * c('1', j)) =l= cap;

Model Optimizacion /all/;
SOLVE Optimizacion USING MIP MAXIMIZING z;
