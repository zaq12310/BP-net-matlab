function [b] =double_0_1(b)
%��double���͵�b�����һ��
b_max=max(b);
b_min=min(b);
b=(b-b_min)/(b_max-b_min);
end

