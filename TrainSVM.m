k = 1;
for i = 1:6
    for j = i + 1:7        
        X = LearningData{:, [i, j]};
        y = LearningData.Label;
        SVMModel{k}.model = fitcsvm(X, y, 'KernelFunction', 'linear', 'KernelScale', 'auto', 'KFold', 5);
        S_Acc(k) = 1 - kfoldLoss(SVMModel{k}.model, 'LossFun', 'ClassifError');
        disp(S_Acc(k))
        k = k + 1
    end
end


i=1
j=2
X = LearningData{:, [i, j]};
y = LearningData.Label;
model = fitcsvm(X, y, 'KernelFunction', 'linear', 'KernelScale', 'auto', 'KFold', 5);
S_Acc = 1 - kfoldLoss(model, 'LossFun', 'ClassifError');