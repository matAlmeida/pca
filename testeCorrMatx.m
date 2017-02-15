[data, labels] = Data();

soma = sum(data(:,1));
media = soma/3006;
data2 = data(:,1)-media;
data2 = data2.^2;
desvPadr = sqrt(sum(data2)/3006);

soma2 = sum(labels);
media2 = soma2/3006;
labels2 = labels-media2;
labels2 = labels2.^2;
desvPadr2 = sqrt(sum(labels2)/3006);

tlabels = labels+1;

corr = sum(data(:,1).*tlabels)/(desvPadr*desvPadr2)

[rho, pval] = corr([data(:,1) labels]);