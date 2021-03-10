k = 1;
for i = 1:7
    for j = i + 1:8        
        X = LearningData{:, [i, j]};
        y = LearningData.Label;
        SVMModel3{k}.model = fitcsvm(X, y, 'KernelFunction', 'linear', 'KernelScale', 'auto', 'KFold', 5, 'Standardize', true);
        S_Acc3(k) = 1 - kfoldLoss(SVMModel3{k}.model, 'LossFun', 'ClassifError');
        disp(S_Acc3(k))
        k = k + 1
    end
end


% i=1
% j=2
% X = LearningData{:, [i, j]};
% y = LearningData.Label;
% model = fitcsvm(X, y, 'KernelFunction', 'linear', 'KernelScale', 'auto', 'KFold', 5);
% S_Acc = 1 - kfoldLoss(model, 'LossFun', 'ClassifError');


% k = 1;
% for i = 1:8  
%     X = data{:, i};
%     y = data.Label;
%     SVMModel{k}.model = fitcsvm(X, y, 'KernelFunction', 'linear', 'KernelScale', 'auto', 'KFold', 5);
%     zxcv(k) = 1 - kfoldLoss(SVMModel{k}.model, 'LossFun', 'ClassifError');
%     disp(zxcv(k))
%     k = k + 1
% end