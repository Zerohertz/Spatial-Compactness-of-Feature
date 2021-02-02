Num = 1;

for i = ['A', 'B', 'C', 'D']
    for j = ['1', '2', '3']
        cd 'D:\Spatial-Compactness-of-Feature\v43hmbwxpm-2\4 Data collected from a bearing with ball fault'
        dat = append('B-', i, '-', j, '.mat');
        tmp = load(dat);
        cd 'D:\Spatial-Compactness-of-Feature\'
        Fault3(Num).tab = makeLearningData(tmp.Channel_1, 1000, "Fault");
        Num = Num + 1;
    end
end





F3 = vertcat(Fault3(1).tab, Fault3(2).tab, Fault3(3).tab, Fault3(4).tab, Fault3(5).tab, Fault3(6).tab, Fault3(7).tab, Fault3(8).tab, Fault3(9).tab, Fault3(10).tab, Fault3(11).tab, Fault3(12).tab);