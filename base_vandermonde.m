function A = base_vandermonde(pts)
  M = zeros(size(pts)(2), size(pts)(2));
  pts;
  for n = 1:size(pts)(2)
    for m = 1:size(pts)(2)
      M(n, m) = pts(1, n)^(m-1);
    end
  end
  M;
  Y = zeros(size(pts)(2), 1);
  A = zeros(size(pts)(2), 1);
  for n = 1:size(pts)(2)
    Y(n, 1) = pts(2, n);
  end
  Y;
  A = M \ Y;
endfunction
