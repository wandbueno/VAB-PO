var x1 integer >= 0;  /* Numero de Boeing 717 */
var x2 integer >= 0;  /* Numero de Boeing 737-500 */
var x3 integer >= 0;  /* Numero de MD-11 */

maximize revenue: 330*x1 + 300*x2 + 420*x3;

/* Restricao de Custo */
s.t. cost: 5.1*x1 + 3.6*x2 + 6.8*x3 <= 220;

/* Restrições de Pilotos */
s.t. pilots1: 2*x1 <= 30 + 2*x3; /* pilotos do Boeing 717 mais pilotos do MD-11 */
s.t. pilots2: 2*x2 <= 20 + 2*x3; /* pilotos do Boeing 737-500 mais pilotos do MD-11 */
s.t. pilots3: 2*x3 <= 10; /* apenas pilotos do MD-11 */

/* Restricao de Manutencao */
s.t. maintenance: x1 + 0.75*x2 + 1.67*x3 <= 40;

solve;

printf "\nNumero de Boeing 717: %d\n", x1;
printf "Numero de Boeing 737-500: %d\n", x2;
printf "Numero de MD-11: %d\n\n", x3;
printf "Receita Maxima: %f\n\n", revenue;

end;
