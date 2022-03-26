function [  ] = exam1_3_1(cir,rad)
%第一次作业习题3 方案一
%cir是这件物品的周长
%rad是这件物品的弧度

%分析得知：周长大于20的是香蕉，弧度大于3的是橙子
if cir>20
    fprintf('这个水果是香蕉');
else 
    if rad>3
        fprintf('这个水果是橙子');
    else
        fprintf('这个水果是苹果');
    end
    
end

end

