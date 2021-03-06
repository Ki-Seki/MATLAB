% 案例：选择旅游地（https://zhuanlan.zhihu.com/p/39993228）
% 此代码中的符号解释：
% m 正互反矩阵，如 m1 代表方案层对准则层的 A1 准则的正互反矩阵
% w 权重
% f 是否通过一致性检验的标志

m = [1      1/2     4       3       3
     2      1       7       5       5
     1/4    1/7     1       1/2     1/3
     1/3    1/5     2       1       1
     1/3    1/5     3       1       1];
[w, f] = AHP(m);

m1 = [1     2      5
      1/2   1      2
      1/5   1/2    1];
[w1, f1] = AHP(m1);

m2 = [1     1/3    1/8
      3     1      1/3
      8     3      1];
[w2, f2] = AHP(m2);

m3 = [1     1      3
      1     1      3
      1/3   1/3    1];
[w3, f3] = AHP(m3);

m4 = [1     3      4
      1/3   1      1
      1/4   1      1];
[w4, f4] = AHP(m4);

m5 = [1     1      1/4
      1     1      1/4
      4     4      1];
[w5, f5] = AHP(m5);

fprintf('\n一致性检验结果：%d %d %d %d %d %d\n\n', f, f1, f2, f3, f4, f5);
fprintf('最终结果：\n');
answer = ([w1 w2 w3 w4 w5] * w)';
disp(answer);