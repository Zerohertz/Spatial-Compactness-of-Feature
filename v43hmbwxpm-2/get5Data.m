Num = 1;

for i = 'A'%, 'B', 'C', 'D']
    for j = ['1', '2', '3']
        cd 'D:\Paper\Spatial-Compactness-of-Feature\v43hmbwxpm-2\5 Data collected from a bearing with a combination of faults'
        dat = append('C-', i, '-', j, '.mat');
        tmp = load(dat);
        cd 'D:\Paper\Spatial-Compactness-of-Feature\'
        Fault4(Num).tab = makeLearningData(tmp.Channel_1, 100000, "Fault");
        Num = Num + 1;
    end
end




F4 = vertcat(Fault4(1).tab, Fault4(2).tab, Fault4(3).tab);
%F4 = vertcat(Fault4(1).tab, Fault4(2).tab, Fault4(3).tab, Fault4(4).tab, Fault4(5).tab, Fault4(6).tab, Fault4(7).tab, Fault4(8).tab, Fault4(9).tab, Fault4(10).tab, Fault4(11).tab, Fault4(12).tab);