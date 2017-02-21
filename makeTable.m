function [] = makeTable(data, meta, titulo, showPie, showPca)
%MAKETABLE Cria uma tabela no terminal com as informações do pca e mostra um grafico de pizza com informações do pca
%   Entradas:
%            data -> Matrix, numeros extraido do arquivo de saída do projetoWagyu
%            meta -> Vetor, Metadata extraido do arquivo de saída do projetoWagyu
%            titulo -> String, nome da tela dos graficos
%            showPie -> Bolleano, true para aparecer o grafico de pizza, false para não aparecer
%            showpCA -> Bolleano, true para aparecer o grafico com as PC, false para não aparecer

[coeff, score, latent, ~, explained, mu] = pca(data);

[values, index] = sort(abs(mu), 'descend');
[~, n] = size(index);
topo = sprintf('Id \tValor \t\tNomeATH \t\tPC1 \t\tPC2 \t\tPC3');
disp(topo);

for i = 1:n
    pc1 = (100*abs(coeff(index(i), 1)))/sum(abs(coeff(:,1)));
    pc2 = (100*abs(coeff(index(i), 2)))/sum(abs(coeff(:,2)));
    pc3 = (100*abs(coeff(index(i), 3)))/sum(abs(coeff(:,3)));
    if (length(meta{4+index(i)}{1}) > 13)
        s = sprintf('%d \t%f \t%s \t%f \t%f \t%f', index(i), values(i), meta{4+index(i)}{1}, pc1, pc2, pc3);
    elseif (length(meta{4+index(i)}{1}) < 7)
        s = sprintf('%d \t%f \t%s \t\t\t%f \t%f \t%f', index(i), values(i), meta{4+index(i)}{1}, pc1, pc2, pc3);
    else
        s = sprintf('%d \t%f \t%s \t\t%f \t%f \t%f', index(i), values(i), meta{4+index(i)}{1}, pc1, pc2, pc3);
    end
    disp(s);
end

topo = sprintf('\n\nPC \tRepresentatividade');
disp(topo);

for i = 1:n
    s = sprintf('%d \t%.15f', i, explained(i));
    disp(s);
end

if showPie
    figure('Name', titulo, 'NumberTitle', 'off');
    pie(explained);
    legend('PC-1', 'PC-2', 'PC-3', 'PC-4', 'PC-5', 'PC-6', 'PC-7', 'PC-8', 'PC-9', 'PC-10', 'PC-11', 'PC-12', 'PC-13');
end

if showPca
    cumsum(latent)./sum(latent);
    figure('Name',titulo,'NumberTitle','off');
    biplot(coeff(:,1:3), 'Score', score(:,1:3),'VarLabels', {'PC-1' 'PC-2' 'PC-3' 'PC-4' 'PC-5' 'PC-6' 'PC-7' 'PC-8' 'PC-9' 'PC-10' 'PC-11' 'PC-12' 'PC-13'});
end

end
