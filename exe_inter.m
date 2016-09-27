# 1.a)
disp('Base Canonique');

# Calcul des coefficients du polynome
P = base_vandermonde([-2; -1; 1; 2], [10; 4; 6; 3])

# affichage du polynome
x = (-2:0.01:2);
y = zeros(length(x));
for i=(1:length(x))
  for n = (1:size(P)(1))
    # creation du polynome final
    y(i) = y(i) + P(n)(1)*(x(i)^(n-1));
  end
end
plot(x,y);
#pause(2);


# 1.b)
disp('Base de Lagrange');

# Calcul de l'image du polynome, ici t = 1
L = base_lagrange([-2; -1; 1; 2], [10; 4; 6; 3], -2)
