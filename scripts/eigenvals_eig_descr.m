%% eigenvals_eig_descr Computing egenvalues with the use of the sparse descriptor method and Matlab's eigs function
function eigenvals_eig_descr()
global V eigenvals W S eigenvals2 E Nx

V = [];
eigenvals = [];
eigenvals2 = [];
W = [];

%% Compute the eigenvalues, right (V), and left (W) eigenvectors
Eig_calc_tmr=tic;
[V, eigenvals] = eigs(S,E,Nx,'SM');
eigenvals = diag(eigenvals);
[W, eigenvals2] = eigs(S',E,Nx,'SM');
eigenvals2 = diag(eigenvals2);
fprintf('Computation of eigenvalues, left, and right eigenvectors with ARPACK (eigs) done in %.3f seconds.\n',toc(Eig_calc_tmr));
end
