k = 1;
for i = 1:6
    for j = i + 1:7        
        NoSCF(k) = NumOfSCF(Normal(1).tab, Fault1(3).tab, [i, j], 20)
        %[NoSCF(k), Feat(k)] = NumOfSCF(Normal(3).tab, Fault3(3).tab, [i, j], 20, '200000-100');
        k = k + 1;
        close
    end
end
