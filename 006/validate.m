% 在 TSP 问题背景下，使 PSO 中的速度与位置合法化，也就是使生成的解是有效解
function [v, x] = validate(v, x)
    % v 速度向量
    % x 位置向量
    
    n = size(x, 2);
    m = min(x);
    M = max(x);
    
    x_old = x - v;
    x_new = (1-n) / (m-M) * (x-M) + n;  % 坐标变换：[m, M] → [1, n]
    x_new = round(x_new);  % 变换为整数
    x_new = reorganize(x_new);  % 熨平粒子
    
    v = x_new - x_old;
    x = x_new;
end