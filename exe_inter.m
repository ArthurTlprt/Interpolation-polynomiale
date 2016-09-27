# 1.a)

# Calcul des coefficients du polynome
P = base_vandermonde([[-2; 10], [-1; 4], [1; 6], [2; 3]])

# affichage du polynome
x = (-2:0.01:2);
y = zeros(length(x));
for i=(1:length(x))
  for n = (1:size(P)(1))
    y(i) = y(i) + P(n)(1)*(x(i)^(n-1));
  end
end
plot(x,y);
#pause(2);


# 1.b)
L = base_lagrange([-2; -1; 1; 2], [10; 4; 6; 3], 1)
