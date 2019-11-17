function [index_0,index_1] = maxk(a,k)
  L = length(a);
  a_s=sort(unique(a),'descend');
  max1 = a_s(1);
  max2 = a_s(2);
  index_0 = [];
  index_1 = [];
  for i=1:L
    if a(i) == max1
      index_1(length(index_1)+1) = i;
    elseif a(i) == max2
      index_0(length(index_0)+1) = i;
    end
  end
end