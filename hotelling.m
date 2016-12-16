function hotelling(X)
%HOTELLING Summary of this function goes here
%   Detailed explanation goes here

    [lin, col] = size(X);
    means = [];
    h = [];
    
    for i = 1:lin
        means(i) = sum(X(i,:)) / col;
        h(i,1) = 1;
    end
    
    %B = []; % Matriz centralizada
    B = X - (means*h);
    %for i = 1:lin
    %    B(i,:) = X(i,:) - means(i);
    %end
    
    C = (B'*B)/lin; % CovMatrix, ERRADA
    
    CV = cov(X); % CovMatrix CERTA
    [eigVec, eigVal] = eig(CV);
    
    %
    % Calculo de g[m] pra escolher melhor L
    %
    
    g = zeros(1,col); % Energia acumulativa
    s = []; % vetor desvio padrao
    for i = 1:col
        for j = 1:i
            g(i) = g(i) + eigVal(j,j);
        end
        s(i) = sqrt(CV(i,i));
    end
    
    soma = 0;
    for i = 1:col
        soma = soma + eigVal(i,i);
    end
    
    for i = 1:col
        if (g(i)/soma) >= 0.8;
            break
        end
    end
    
    L = i; % melhor tamanho subconjunto
    
    W = []; % Subconjunto de eigvectors
    for i = 1:L
        W(i,:) = eigVec(:,i);
    end
    
    Z = [];
    for i = 1:col
        for j = 1:lin
            Z(i,j) = B(j, i) / (s * h(1:col,1));
        end
    end 
    
    Y = W'*Z;
    
    plot(Y)
    
    
end

