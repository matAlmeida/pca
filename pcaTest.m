[data] = Data();

[coeff, score, latent] = princomp(data);

% coeff - The Principal components
% score - The transformed data
% latent - The eigenvalues of covMatrix
% Tsquare - Hotelling T^2 statistic for the transformed data

%biplot(coeff(:,1:2), 'Scores', score(:,1:2), 'VarLabels', {'x1' 'x2' 'x3' 'x4'})


pca1 = coeff(:,1);
pca2 = coeff(:,2);
pca3 = coeff(:,3);
pca4 = coeff(:,4);
pca5 = coeff(:,5);
pca6 = coeff(:,6);
pca7 = coeff(:,7);

ath = {'a1';'a2';'a3';'a4';'a5';'a6';'a7';'a8';'a9';'a10';'a11';'a12';'a13'};

subplot(1,1,1);
plot(data);
%scatter(data, 25, 'filled');
%xlabel('nmr ath');
%ylabel('value');
%legend('1','2','3','4','5','6','7','8','9','10','11','12','13');

disp(t)