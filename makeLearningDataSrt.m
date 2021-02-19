function tab = makeLearningDataSrt(raw, Winsize, lab)
i = 0;
while(i < fix(length(raw) / Winsize))
    sam = raw(Winsize * i + 1:Winsize * i + Winsize);
    mn(i + 1) = mean(sam);
    sd(i + 1) = std(sam);
    sk(i + 1) = skewness(sam);
    ku(i + 1) = kurtosis(sam);
    rm(i + 1) = rms(sam);
    cf(i + 1) = peak2rms(sam);
    p2p(i + 1) = peak2peak(sam);
    
    label(i + 1) = lab;
    i = i + 1;
end
tab = table(mn', sd', sk', ku', rm', cf', p2p', label', 'VariableNames', {'Mean', 'Std', 'Skewness', 'Kurtosis', 'RMS', 'CF', 'P2P', 'Label'});
end

