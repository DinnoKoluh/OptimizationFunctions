function [out] = WLMS(A, b, W)
out = inv(transpose(A)*W*A)*transpose(A)*W*b;

end

