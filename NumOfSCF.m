function Num = NumOfSCF(Normal, Abnormal, FeatureVec, Winsize)

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

end

