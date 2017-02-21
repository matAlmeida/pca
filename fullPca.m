[data, ~, meta, data_n, data_c, data_b] = Data();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         COMPLETO         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

makeTable(data, meta, 'Completo', 0, 0);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          NORMAL          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%makeTable(data_n, meta, 'Normal', 0, 0);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         CANCER           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%makeTable(data_c, meta, 'Cancer', 0, 0);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         BENIGINO         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%makeTable(data_b, meta, 'Benigno', 0, 0);

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

clear i
