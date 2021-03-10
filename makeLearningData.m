function tab = makeLearningData(raw, Winsize, lab)
i = 0;
j = 0;
while(j + Winsize <= length(raw))%(i < length(raw) - Winsize + 1)
    sam = raw(j + 1:j + Winsize);
    mx(i + 1) = max(sam);
    mn(i + 1) = mean(abs(sam));
    rm(i + 1) = rms(sam);
    sk(i + 1) = skewness(sam);
    ku(i + 1) = kurtosis(sam);
    cf(i + 1) = max(sam) / rms(sam);
    sf(i + 1) = rms(sam) / mean(abs(sam));
    imf(i + 1) = max(sam) / mean(abs(sam));
    
    label(i + 1) = lab;
    i = i + 1;
    j = j + 100;
end
tab = table(mx', mn', rm', sk', ku', cf', sf', imf', label', 'VariableNames', {'Max', 'AbsMean', 'RMS', 'Skewness', 'Kurtosis', 'CF', 'SF', 'IF', 'Label'});
end


