
%[-2; -1; 1; 2], [10; 4; 6; 3], 1
# P est l'image de la fonction
function image = base_newton(x, y, t)
  % calcul des omegas
  omega = [];
  for k=1:length(x)
    omega(k) = 1;
    for i=1:k
      omega(k) = omega(k) * (t - x(i));
    end
    disp('omega(',k,') = ', omega(k));
    printf('omega(%d) = %d\n',k,omega(k))
  end
  % calcul des coefficients
  alpha = [];
  alpha(1) = y(1);

endfunction
