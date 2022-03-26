function [b] =double_0_1(b)
%将double类型的b矩阵归一化
b_max=max(b);
b_min=min(b);
b=(b-b_min)/(b_max-b_min);
end

