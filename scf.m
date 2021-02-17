k = 1;
for i = 1:6
    for j = i + 1:7        
        %NoSCF(k) = NumOfSCF(Normal(2).tab, Fault2(1).tab, [i, j], 20)
        [NoSCF(k), Feat(k)] = NumOfSCFwithPlot(Normal(2).tab, Fault2(1).tab, [i, j], 20, '10000-10');
        k = k + 1;
        close
    end
end
