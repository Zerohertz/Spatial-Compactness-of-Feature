function gpm(Normal, Abnormal)
fig = figure;
set(fig, 'Position', [0 0 1920 1080])

data = vertcat(Normal, Abnormal);

xnames = Normal.Properties.VariableNames(1:end - 1);
da = data{:, 1:7};
gplotmatrix(da, [], data.Label, 'br', [], [], [], [], xnames);
end

