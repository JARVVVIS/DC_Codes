%% Find the most equiprobable split

function [idx] = split(px,len_p)
  idx = 1;
  for i=1:len_p-1
    
    sumL = sum(px(1:idx));
    sumR = sum(px)-sumL;
    delta = sumL-sumR;
    delta_abs = abs(delta);
    
    if delta<=0 &&abs(px(i+1)*2-delta_abs)<=delta_abs
      idx = idx+1;
    end
  end
end
     