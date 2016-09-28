# A est un vector contenant les coefficients du polynome
function image = base_vandermonde(x, y, t)
  image = 0;
  # M matrice contenant les polynomes
  M = zeros(size(x)(1), size(x)(1));
  for n = 1:size(x)(1)
    for m = 1:size(x)(1)
      M(n, m) = x(n)^(m-1);
    end
  end
  # vecteur contentant tous les y
  Y = zeros(size(x)(1), 1);
  # vecteurs solution du systeme, contenant les coefficients du polynome final
  A = zeros(size(x)(1), 1);
  for n = 1:size(x)(1)
    Y(n, 1) = y(n);
  end
  Y;
  # resolution du systeme
  A = M \ Y;
  A(2)(1);
  for n = (1:size(A)(1))
    # creation du polynome final
    image = image + A(n)(1)*(t^(n-1));
  end
endfunction
