function [idx] = pos(a,sum)
  idx = 1;
  for i=1:length(a)
    if a(i)>sum
      idx=idx+1;
    end
  end
  
end
  