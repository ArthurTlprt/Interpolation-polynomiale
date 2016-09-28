
%[-2; -1; 1; 2], [10; 4; 6; 3], 1
# P est l'image de la fonction
function P = base_newton(x, y, t)
  P = 0;
  L = [];
  # calcul des fonctions L(i)
  for i = 1:size(x)(1)
    L(i) = 1;
     for j = 1:size(x)(1)
       if j == i
         #display('division par zero -> 1')
       else
         # Produit des fractions
         L(i) = L(i) * (  (t-x(j)) / (x(i)-x(j))  );
       end
     end
   end
   # calcul de la somme des y(i)*L(i)
   for i = 1:size(x)(1)
     P = P + (y(i)*L(i));
   end
endfunction
