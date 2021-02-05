k = 1;
for i = 1:6
    for j = i + 1:7        
        [NoSCF(k), Feat(k)] = NumOfSCFwithPlot(No, F3, [i, j], 20, 'Name');
        k = k + 1;
        close
    end
end
