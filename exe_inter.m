# 2.a)
disp('Base Canonique');

subplot (2, 1, 1)
plot_func(@base_vandermonde,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.b)
disp('Base de Lagrange');
subplot (2, 1, 2)
plot_func(@base_lagrange,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.c)
disp('Base de Newton');



pause(3); %pause du graphique
