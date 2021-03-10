k = 1;
for i = 1:7
    for j = i + 1:8        
        %NoSCF(k) = NumOfSCF(Normal(2).tab, Fault2(1).tab, [i, j], 20)
        [NoSCF_30(k), Feat(k)] = NumOfSCFwithPlot(Normal(1).tab, Fault2(2).tab, [i j], 30, '20000-100');
        k = k + 1
        close
    end
end
