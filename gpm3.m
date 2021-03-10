function gpm3(a, b, c)
fig = figure;
set(fig, 'Position', [0 0 1920 1080])

a.Label(:) = "a";
b.Label(:) = "b";
c.Label(:) = "c";

data = vertcat(a, b, c);

xnames = a.Properties.VariableNames(1:end - 1);
da = data{:, 1:8};
gplotmatrix(da, [], data.Label, 'brg', [], [], [], [], xnames);
end

