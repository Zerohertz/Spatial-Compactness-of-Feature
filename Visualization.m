nb = 50;

NN = data(find(data.Label == 'N'),:);

AA = data(find(data.Label == 'A'),:);

x_n = normalize(NN.SDNN);
x_f = normalize(AA.SDNN);
y_n = normalize(NN.SDSD);
y_f = normalize(AA.SDSD);

% x_n = normal.X_rms;
% x_f = fault.X_rms;
% y_n = normal.Z_rms;
% y_f = fault.Z_rms;
% 
% if max(x_n) - min(x_n) > max(x_f) - min(x_f)
%     binwdt_x = (max(x_f) - min(x_f)) / nb;
% else
%     binwdt_x = (max(x_n)- min(x_n)) / nb;
% end
% 
% if max(y_n) - min(y_n) > max(y_f) - min(y_f)
%     binwdt_y = (max(y_f) - min(y_f)) / nb;
% else
%     binwdt_y = (max(y_n)- min(y_n)) / nb;
% end

if max(x_n) - min(x_n) > max(x_f) - min(x_f)
    binwdt_x = (max(x_f) - min(x_f)) / nb;
else
    binwdt_x = (max(x_n)- min(x_n)) / nb;
end

if max(y_n) - min(y_n) > max(y_f) - min(y_f)
    binwdt_y = (max(y_f) - min(y_f)) / nb;
else
    binwdt_y = (max(y_n)- min(y_n)) / nb;
end



histogram2(x_n, y_n, 'BinWidth', [binwdt_x, binwdt_y], 'FaceAlpha', 0.8)%, 'Normalization', 'probability')
hold on
histogram2(x_f, y_f, 'BinWidth', [binwdt_x, binwdt_y], 'FaceAlpha', 0.8)%, 'Normalization', 'probability')

xlabel('SDNN')
ylabel('SDSD')
zlabel('Density')

%axis([0 120 0 120])
axis([-2 2 -2 2])
legend('Normal', 'Apnea')