# 2.a)
disp('Base Canonique');

figure('position', [100, 100, 500, 800])    % postion + size

subplot (3, 1, 1)
plot_func(@base_vandermonde,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.b)
disp('Base de Lagrange');
subplot (3, 1, 2)
plot_func(@base_lagrange,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.c)
disp('Base de Newton');
subplot (3, 1, 3)
plot_func(@base_newton,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

title('Base canonique, Base de Lagrange, Base de Newton');
pause(2); %pause du graphique

# 3. Phenomene de Runge

figure('position', [100, 100, 500, 800])    % postion + size

%affichage de g
x = (-1:0.05:1);
y = [];
for i=1:length(x)
  y(i) = 1/(1+25*x(i)^2);
end
subplot (2, 1, 1)
plot(x, y)

mx = []
my = []
for i=1:10
  mx(i) = x(int8(length(x)/i));
  my(i) = y(int8(length(y)/i));
end
mx
my
pause(2)
