Num = 1;

for i = ['A', 'B', 'C', 'D']
    for j = ['1', '2', '3']
        cd 'D:\Spatial-Compactness-of-Feature\v43hmbwxpm-2\3 Data collected from a bearing with outer race fault'
        dat = append('O-', i, '-', j, '.mat');
        tmp = load(dat);
        cd 'D:\Spatial-Compactness-of-Feature\'
        Fault2(Num).tab = makeLearningData(tmp.Channel_1, 1000, "Fault");
        Num = Num + 1;
    end
end





F2 = vertcat(Fault2(1).tab, Fault2(2).tab, Fault2(3).tab, Fault2(4).tab, Fault2(5).tab, Fault2(6).tab, Fault2(7).tab, Fault2(8).tab, Fault2(9).tab, Fault2(10).tab, Fault2(11).tab, Fault2(12).tab);