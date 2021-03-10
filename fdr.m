function [f] = fdr(c1,c2)
f = (mean(c1) - mean(c2))^2 /  (std(c1)^2 + std(c2)^2);
end

