Num = 1;

for i = 'A'%, 'B', 'C', 'D']
    for j = ['1', '2', '3']
        cd 'D:\Paper\Spatial-Compactness-of-Feature\v43hmbwxpm-2\2 Data collected from a bearing with inner race fault'
        dat = append('I-', i, '-', j, '.mat');
        tmp = load(dat);
        cd 'D:\Paper\Spatial-Compactness-of-Feature\'
        Fault1(Num).tab = makeLearningDataSrt(tmp.Channel_1, 10000, "Fault");
        Num = Num + 1;
    end
end




F1 = vertcat(Fault1(1).tab, Fault1(2).tab, Fault1(3).tab);
%F1 = vertcat(Fault1(1).tab, Fault1(2).tab, Fault1(3).tab, Fault1(4).tab, Fault1(5).tab, Fault1(6).tab, Fault1(7).tab, Fault1(8).tab, Fault1(9).tab, Fault1(10).tab, Fault1(11).tab, Fault1(12).tab);