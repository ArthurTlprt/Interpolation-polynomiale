% function L = base_lagrange(pts)
%   pts
%   L = [1]   # ce polynome represente la fonction L(x)
%   for i = 1:size(pts)(2)
%     p = [1];
%     for j = 1:i
%       #display(pts(1, i));
%       if pts(1, j) == pts(1, i)
%         p = conv(p, [1]);
%       else
%         p = conv(p, [1/(pts(1, j)-pts(1, i)), -pts(1, i)/( pts(1, j)-pts(1, i) )]);   # ce polynome est une fraction du produit
%       end
%     end
%     display(p);
%     L = plus(L, p)
%   end
% endfunction


%[-2; -1; 1; 2], [10; 4; 6; 3], 1

function P = base_lagrange(x, y, t)
  P = 0;
  L = [];
  # calcul des fonctions L(i)
  for i = 1:size(x)(1)
    L(i) = 1;
     for j = 1:i
       if j == i
         display('division par zero -> 1')
       else
         L(i) = L(i) * (  (t-x(j)) / (x(i)-x(j))  );
       end
     end
   end
   L
   # calcul de la somme des y(i)*L(i)
   for i = 1:size(x)(1)
     P = P + (y(i)*L(i))
   end
endfunction
