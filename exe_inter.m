# 2.a)
disp('Base Canonique');

figure('position', [100, 100, 800, 500])    % postion + size

subplot (2, 1, 1)
plot_func(@base_vandermonde,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.b)
disp('Base de Lagrange');
subplot (2, 1, 2)
plot_func(@base_lagrange,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.c)
disp('Base de Newton');

base_newton([-2; -1; 1; 2], [10; 4; 6; 3], 2);

title("Base canonique, Base de Lagrange, Base de Newton");
pause(3); %pause du graphique
