function n = palin_product(dig, lim)
    n = 0;
    for ii = 10^dig-1 : -1 : 10^(dig-1)                             % going from large to small
        for jj = min(10^dig-1,floor((lim-1)/ii)) : -1 : 10^(dig-1)  % check numbers under lim
            p = ii*jj;
            if p < n                % gone under the current max
                continue;           % no need to go further in the inner loop
            elseif palindrome(p)
                n = p;              % found a larger one
                continue;           % no need to go further in the inner loop
            end
        end
    end
end
function isp = palindrome(p)
    txt = num2str(p);
    isp = strcmp(txt,txt(end:-1:1));
end
