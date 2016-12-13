function [sortedValues, sortedVectors] = hotelling(eigValues, eigVectors)
%HOTELLING Summary of this function goes here
%   Detailed explanation goes here

sortedVectors = [];

sortedValues = sort(eigValues);

l = size(sortedValues);

    for i = 1:l(1)
        for j = 1:l(1)
            if (sortedValues(i) == eigValues(j))
                sortedValues(i, 2) = j;
                break
            end
        end
    end

end

