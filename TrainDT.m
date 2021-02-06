k = 1;
for i = 1:6
    for j = i + 1:7        
        X = LearningData(:, [i, j]);
        y = LearningData(:, 8);
        TreeModel{k}.model = fitctree(X, y, 'MaxNumSplits', 100, 'KFold', 5);
        T_Acc(k) = 1 - kfoldLoss(TreeModel{k}.model, 'LossFun', 'ClassifError');
        k = k + 1
    end
end