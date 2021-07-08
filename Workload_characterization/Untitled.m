real = readtable('synt_wl_low_pre.csv');
syn = readtable('synt_wl_low_post.csv');

real_ok = real(:,2:7);
syn_ok = syn(:,2:7);
N=size(real_ok,2)

A = table2array(real_ok)
B = table2array(syn_ok)

[h,p] = kstest(A);

p = zeros(1,N);
h = zeros(1,N);

for i = 1:N
    [p(i), h(i)] =ranksum(A(:,i), B(:,i));
end


