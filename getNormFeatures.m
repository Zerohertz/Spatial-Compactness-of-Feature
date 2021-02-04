function normData = getNormFeatures(data, Winsize)
for i = 1:fix(height(data) / Winsize)
    for j = 1:width(data) - 1
        normData(Winsize * (i - 1) + 1:Winsize * i, j) = normalize(data(Winsize * (i - 1) + 1:Winsize * i, j));
    end
end
normData(1:height(normData), width(data)) = data(1:height(normData), width(data));
end

