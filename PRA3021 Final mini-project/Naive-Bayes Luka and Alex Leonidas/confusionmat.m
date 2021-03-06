% http://wiki.octave.org/Talk:Statistics_package

##Taken from https://github.com/tambetm/bnni2015/blob/master/utils/confusionmat.m
 function [ret, values] = confusionmat(v1, v2)
    values = union(unique(v1), unique(v2));
    ret = zeros(size(values, 1), size(values, 1));
    for i = 1:size(v1)
       i1 = find(values == v1(i));
       i2 = find(values == v2(i));
       ret(i1, i2) = ret(i1, i2) + 1;
    end
 end