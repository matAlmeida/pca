[data, labels, meta, data_n, data_c, data_b] = Data();

[coeff, score, latent, tsquare, explained, mu] = pca(data);

[values, index] = sort(abs(mu), 'descend');

[m, n] = size(index);
top = sprintf('Id \tValor \t\tNomeATH');
disp(top)

for i = 1:n
    s = sprintf('%d \t%f \t%s', index(i), values(i), meta{4+index(i)}{1});
    disp(s)
end

% Normal

[coeff, score, latent, tsquare, explained, mu] = pca(data_n);

[values, index] = sort(abs(mu), 'descend');

[m, n] = size(index);
top = sprintf('\n\nId \tValor \t\tNomeATH');
disp(top)

for i = 1:n
    s = sprintf('%d \t%f \t%s', index(i), values(i), meta{4+index(i)}{1});
    disp(s)
end

% Cancer

[coeff, score, latent, tsquare, explained, mu] = pca(data_c);

[values, index] = sort(abs(mu), 'descend');

[m, n] = size(index);
top = sprintf('\n\nId \tValor \t\tNomeATH');
disp(top)

for i = 1:n
    s = sprintf('%d \t%f \t%s', index(i), values(i), meta{4+index(i)}{1});
    disp(s)
end

% Benigno

[coeff, score, latent, tsquare, explained, mu] = pca(data_b);

[values, index] = sort(abs(mu), 'descend');

[m, n] = size(index);
top = sprintf('\n\nId \tValor \t\tNomeATH');
disp(top)

for i = 1:n
    s = sprintf('%d \t%f \t%s', index(i), values(i), meta{4+index(i)}{1});
    disp(s)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          NORMAL          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% disp('Normal')
%[pc_n, score_n, latent_n, tsquare_n, explained_n, mu_n] = pca(data_n);
% cumsum(latent_n)./sum(latent_n);
% figure('Name','Normal','NumberTitle','off')
% biplot(pc_n(:,1:2), 'Score', score_n(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5' 'x6' 'x7' 'x8' 'x9' 'x10' 'x11' 'x12' 'x13'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         CANCER           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% disp('Cancer')
% [pc_c, score_c, latent_c, tsquare_c, explained_c, mu_c] = pca(data_c);
% cumsum(latent_c)./sum(latent_c);
% figure('Name','Cancer','NumberTitle','off')
% biplot(pc_c(:,1:2), 'Score', score_c(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5' 'x6' 'x7' 'x8' 'x9' 'x10' 'x11' 'x12' 'x13'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         BENIGINO         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% disp('Benigno')
% [pc_b, score_b, latent_b, tsquare_b, explained_b, mu_b] = pca(data_b);
% cumsum(latent_b)./sum(latent_b);
% figure('Name','Benigno','NumberTitle','off')
% biplot(pc_b(:,1:2), 'Score', score_b(:,1:2),'VarLabels', {'x1' 'x2' 'x3' 'x4' 'x5' 'x6' 'x7' 'x8' 'x9' 'x10' 'x11' 'x12' 'x13'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         GRAFICO          %
%        DISSIPACAO        %
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
%clear data
%clear labels