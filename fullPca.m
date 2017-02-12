[data, labels] = Data();

[nImg, nAth] = size(data);

normal = 0;
cancer = 0;
benigno = 0;

for i = 1 : nImg
    if strcmp(labels(i), 'Normal')
        normal = normal + 1;
    elseif strcmp(labels(i), 'Cancer')
        cancer = cancer + 1;
    elseif strcmp(labels(i), 'Benigno')
        benigno = benigno + 1;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          NORMAL          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Normal')
[pc_n, score_n, latent_n, tsquare_n, explained_n, mu_n] = pca(data(1:normal,:));
cumsum(latent_n)./sum(latent_n)
figure('Name','Normal','NumberTitle','off')
biplot(pc_n(:,1:2), 'Score', score_n(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5' 'x6' 'x7' 'x8' 'x9' 'x10' 'x11' 'x12' 'x13'})

[pc_n1, score_n1, latent_n1, tsquare_n, explained_n, mu_n] = pca(data(1:normal,1:5));
cumsum(latent_n1)./sum(latent_n1)
figure('Name','Normal1','NumberTitle','off')
biplot(pc_n1(:,1:2), 'Score', score_n1(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5'})

[pc_n2, score_n2, latent_n2, tsquare_n, explained_n, mu_n] = pca(data(1:normal,6:10));
cumsum(latent_n2)./sum(latent_n2)
figure('Name','Normal2','NumberTitle','off')
biplot(pc_n2(:,1:2), 'Score', score_n2(:,1:2),'VarLabels', {'x6' 'x7' 'x8' 'x9' 'x10'})

[pc_n3, score_n3, latent_n3, tsquare_n, explained_n, mu_n] = pca(data(1:normal,11:13));
cumsum(latent_n3)./sum(latent_n3)
figure('Name','Normal3','NumberTitle','off')
biplot(pc_n3(:,1:2), 'Score', score_n3(:,1:2),'VarLabels', {'x11' 'x12' 'x13'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         CANCER           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Cancer')
[pc_c, score_c, latent_c, tsquare_c, explained_c, mu_c] = pca(data(normal+1:cancer,:));
cumsum(latent_c)./sum(latent_c)
figure('Name','Cancer','NumberTitle','off')
biplot(pc_c(:,1:2), 'Score', score_c(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5' 'x6' 'x7' 'x8' 'x9' 'x10' 'x11' 'x12' 'x13'})

[pc_c1, score_c1, latent_c1, tsquare_c, explained_c, mu_c] = pca(data(normal+1:cancer,1:5));
cumsum(latent_c1)./sum(latent_c1)
figure('Name','Cancer1','NumberTitle','off')
biplot(pc_c1(:,1:2), 'Score', score_c1(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5'})

[pc_c2, score_c2, latent_c2, tsquare_c, explained_c, mu_c] = pca(data(normal+1:cancer,6:10));
cumsum(latent_c2)./sum(latent_c2)
figure('Name','Cancer2','NumberTitle','off')
biplot(pc_c2(:,1:2), 'Score', score_c2(:,1:2),'VarLabels', {'x6' 'x7' 'x8' 'x9' 'x10'})

[pc_c3, score_c3, latent_c3, tsquare_c, explained_c, mu_c] = pca(data(normal+1:cancer,11:13));
cumsum(latent_c3)./sum(latent_c3)
figure('Name','Cancer3','NumberTitle','off')
biplot(pc_c3(:,1:2), 'Score', score_c3(:,1:2),'VarLabels', {'x11' 'x12' 'x13'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         BENIGINO         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Benigno')
[pc_b, score_b, latent_b, tsquare_b, explained_b, mu_b] = pca(data(cancer+1:benigno,:));
cumsum(latent_b)./sum(latent_b)
figure('Name','Benigno','NumberTitle','off')
biplot(pc_b(:,1:2), 'Score', score_b(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5' 'x6' 'x7' 'x8' 'x9' 'x10' 'x11' 'x12' 'x13'})

[pc_b1, score_b1, latent_b1, tsquare_b, explained_b, mu_b] = pca(data(cancer+1:benigno,1:5));
cumsum(latent_b1)./sum(latent_b1)
figure('Name','Benigno1','NumberTitle','off')
biplot(pc_b1(:,1:2), 'Score', score_b1(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5'})

[pc_b2, score_b2, latent_b2, tsquare_b, explained_b, mu_b] = pca(data(cancer+1:benigno,6:10));
cumsum(latent_b2)./sum(latent_b2)
figure('Name','Benigno2','NumberTitle','off')
biplot(pc_b2(:,1:2), 'Score', score_b2(:,1:2),'VarLabels', {'x6' 'x7' 'x8' 'x9' 'x10'})

[pc_b3, score_b3, latent_b3, tsquare_b, explained_b, mu_b] = pca(data(cancer+1:benigno,11:13));
cumsum(latent_b3)./sum(latent_b3)
figure('Name','Benigno3','NumberTitle','off')
biplot(pc_b3(:,1:2), 'Score', score_b3(:,1:2),'VarLabels', {'x11' 'x12' 'x13'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          GRAFICO         %
%         DISSIPAÇÃO       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% for i = 1:13
%     grafName = sprintf('ATH%d', i);
%     figure('Name', grafName,'NumberTitle','off')
%     nmrNormal = 0 * ones(1,normal);
%     hNormal = scatter(nmrNormal, data(1:normal,i), 'g');
%     hold on
%     nmrCancer = 1 * ones(1,cancer - normal);
%     hCancer = scatter(nmrCancer, data(normal+1:cancer,i), 'r');
%     hold on
%     nmrBenigno = 2 * ones(1,benigno - cancer);
%     hBenigno = scatter(nmrBenigno, data(cancer+1:benigno, i));
%     legend([hNormal hCancer hBenigno], 'Normal', 'Cancer', 'Benigno');
% end

clear benigno
clear cancer
clear normal
clear i
clear nAth
clear nImg
clear data
clear labels