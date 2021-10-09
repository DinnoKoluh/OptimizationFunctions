function [out] = range(s, a, b)

if s < a
    out = a;
elseif s > b
    out = b;
else
    out = s;
end

end