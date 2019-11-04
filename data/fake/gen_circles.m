s = 10
ix = 64

for r = s*2:5:ix-s*2
    for c = s*2:5:ix-s*2
       im = ones(ix, ix, 3);
       
       for i = 1:64
           for j = 1:64
               if sqrt((i-r)*(i-r) + (c-j)*(c-j)) < s
                   im(i,j, :) = 0;
               end
           end
       end
       fn = sprintf('circle_%d_at_%02d_%02d.png', s, r, c);
       imwrite(im, fn);
    end
end
