function Num = NumOfSCFwithPlot(Normal, Abnormal, FeatureVec, Winsize, Name)

fig = figure;
set(fig, 'Position', [0 0 1920 1080])

Nx = Normal{:, FeatureVec(1)};
Ny = Normal{:, FeatureVec(2)};
Ax = Abnormal{:, FeatureVec(1)};
Ay = Abnormal{:, FeatureVec(2)};

Mx = max([max(Nx), max(Ax), min(Nx), min(Ax)]);
mx = min([max(Nx), max(Ax), min(Nx), min(Ax)]);
My = max([max(Ny), max(Ay), min(Ny), min(Ay)]);
my = min([max(Ny), max(Ay), min(Ny), min(Ay)]);

binwdt_x = (Mx - mx) / Winsize;
binwdt_y = (My - my) / Winsize;

histogram2(Nx, Ny, 'BinWidth', [binwdt_x, binwdt_y], 'FaceAlpha', 0.8)%, 'Normalization', 'probability')
hold on
histogram2(Ax, Ay, 'BinWidth', [binwdt_x, binwdt_y], 'FaceAlpha', 0.8)%, 'Normalization', 'probability')

xlabel(Normal.Properties.VariableNames(FeatureVec(1)))
ylabel(Normal.Properties.VariableNames(FeatureVec(2)))
zlabel('Density')

legend('Normal', 'Abnormal')

set(gca, 'fontsize', 15)

for i = 1:Winsize
   for j = 1:Winsize
      NSCF = length(find(mx + (i - 1) * binwdt_x <= Nx & Nx < mx + i * binwdt_x & my + (j - 1) * binwdt_y <= Ny & Ny < my + j * binwdt_y));
      ASCF = length(find(mx + (i - 1) * binwdt_x <= Ax & Ax < mx + i * binwdt_x & my + (j - 1) * binwdt_y <= Ay & Ay < my + j * binwdt_y));
      %MatOfSCF(i, j, 1) = NSCF;
      %MatOfSCF(i, j, 2) = ASCF;
      NcapA(i, j) = min([NSCF, ASCF]);
      NcupA(i, j) = max([NSCF, ASCF]);
   end
end

Num = sum(NcapA, 'All') / sum(NcupA, 'All');

cd plots
saveas(gca, append(string(Num), '==', string(FeatureVec(1)), '-', string(FeatureVec(2)), '.bmp'))
cd ..
end

