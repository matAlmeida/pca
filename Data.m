function [data, labels] = Data()
%DATA Summary of this function goes here
% '~/Documents/trabalhos/ic/Testes/resultados/'
%Entrada: resultsPath -> Caminho com os arquivos txt com resultados e labels
%         opt -> Opções: 0 - Retorna só os dados (Default)
%                        1 - Retorna só as labels
%                        2 - Retorna os dados e as labels
%   Coleta os dados do txt e transforma em array compativel com o matlab
    
    resultsPath = '~/Documents/trabalhos/ic/Testes/resultados/'; % Colokr como parametros dps
    opt = 0;
    
    flabelsP = dir([resultsPath 'ATH*.txt']);
    sizeL = size(flabelsP);
    if sizeL(1) > 1
        flabelsP = flabelsP(1);
    end
    
    fdataP = dir([resultsPath '*_ATH.txt']);
    sizeL = size(fdataP);
    if sizeL(1) > 1
        fdataP = fdataP(1);
    end
    
    flabels = fopen(strcat(resultsPath, flabelsP.name));
    fdata = fopen(strcat(resultsPath, fdataP.name));
    
    if false(opt)
        i = 1;    
        labels = {};
        tlabels = fgetl(flabels);
        while ischar(tlabels)
            labels(i,1) = cellstr(tlabels);
            i = i + 1;
            tlabels = fgetl(flabels);
        end
    end
    
    i = 1;
    data = {};
    tdata = fgetl(fdata);
    while ischar(tdata)
        splitedData = strsplit(tdata, ';');
        [m, n] = size(splitedData);
        for j = 1:n-1            
            data(i, j) =  splitedData(j);
        end
        i = i + 1;
        tdata = fgetl(fdata);
    end
    
    data = cellfun(@str2double, data);
    
    %clearvars -except data labels

end

