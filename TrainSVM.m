k = 1;
for i = 1:6
    for j = i + 1:7        
        X = gpuArray(LearningData{:, [i, j]});
        y = LearningData{:, 8};
        SVMModel{k}.model = fitcsvm(X, y, 'KernelFunction', 'linear', 'KernelScale', 'auto', 'UseParallel', true, 'KFold', 5);
        S_Acc(k) = 1 - kfoldLoss(SVMModel{k}.model, 'LossFun', 'ClassifError');
        k = k + 1
    end
end


i=1
j=2
X = gpuArray(LearningData{5834003:5836003, [i, j]});
y = LearningData.Label(5834003:5836003);
model = fitcsvm(X, y, 'KernelFunction', 'linear', 'KernelScale', 'auto', 'KFold', 5);
S_Acc = 1 - kfoldLoss(model, 'LossFun', 'ClassifError');