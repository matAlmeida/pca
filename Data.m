function [data, labels, meta, data_n, data_c, data_b] = Data()
%DATA Summary of this function goes here
%Coleta os dados do txt e transforma em matriz compativel com o matlab
%
%Saída: data -> Matriz(N x 13) com os atributos extraidos do Banco de Imagens
%       labels -> Coluna(N x 1) informando tipo da imagem "n" é:
%                 0 - Normal
%                 1 - Benigno
%                 2 - Cancer

    resultsPath = uigetdir('', 'Selecione a pasta com os resultados');
    resultsPath = strcat(resultsPath, '/');
    
    %   PEGA  OS
    %   CAMINHOS
    % DOS ARQUIVOS
    
    flabelsP = dir(fullfile(resultsPath, 'ATH_L_*'));
    sizeL = size(flabelsP);
    if sizeL(1) > 1
        flabelsP = flabelsP(1);
    end
    
    fdataP = dir(fullfile(resultsPath, 'ATH_O_*'));
    sizeL = size(fdataP);
    if sizeL(1) > 1
        fdataP = fdataP(sizeL(1));
    end
    
    fmetaP = dir(fullfile(resultsPath, 'ATH_M_*'));
    sizeL = size(fmetaP);
    if sizeL(1) > 1
        fmetaP = fmetaP(sizeL(1));
    end
    
    %
    % LABELS
    %
    
    labels = load(strcat(resultsPath, flabelsP.name));

    %
    % METADATA
    %
    
    fid = fopen(strcat(resultsPath, fmetaP.name));
    meta = textscan(fid, '%d %d %d %d %s %s %s %s %s %s %s %s %s %s %s %s %s');
    
    %
    % DATA
    %
    
    data = load(strcat(resultsPath, fdataP.name));
    
    % APENAS DADOS DE IMAGENS COM A LABEL "NORMAL"
    data_n = data(1:meta{2},:);
    
    % APENAS DADOS DE IMAGENS COM A LABEL "CANCER"
    data_c = data(meta{2}+1:meta{2}+meta{3}, :);
    
    % APENAS DADOS DE IMAGENS COM A LABEL "BENIGNO"
    data_b = data(meta{2}+meta{3}+1:meta{2}+meta{3}+meta{4}, :);
end