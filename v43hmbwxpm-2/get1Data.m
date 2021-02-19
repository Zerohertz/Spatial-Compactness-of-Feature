Num = 1;

for i = 'A'%, 'B', 'C', 'D']
    for j = ['1', '2', '3']
        cd 'D:\Paper\Spatial-Compactness-of-Feature\v43hmbwxpm-2\1 Data collected from a healthy bearing\'
        dat = append('H-', i, '-', j, '.mat');
        tmp = load(dat);
        cd 'D:\Paper\Spatial-Compactness-of-Feature\'
        Normal(Num).tab = makeLearningData(tmp.Channel_1, 10000, "Normal");
        Num = Num + 1;
    end
end




No = vertcat(Normal(1).tab, Normal(2).tab, Normal(3).tab);
%No = vertcat(Normal(1).tab, Normal(2).tab, Normal(3).tab, Normal(4).tab, Normal(5).tab, Normal(6).tab, Normal(7).tab, Normal(8).tab, Normal(9).tab, Normal(10).tab, Normal(11).tab, Normal(12).tab);