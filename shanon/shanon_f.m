%Shanon Coding Function :)%

function [] = shanon_f(group,j)
  global Codes;
  L = length(group); 
  if L>1  %2 pe last update hojayega%
    i = split(group,L);
    display(i)
    
    for idx=j+1:i+j
      curr_len = length(Codes(idx,:));
      Codes(idx,curr_len+1) = '0';
    end
    
    for idx=i+j+1:L+j
      
      curr_len = length(Codes(idx,:));
      Codes(idx,curr_len+1) = '1';
    end

    shanon_f(group(1:i),j);
    shanon_f(group(i+1:L),j+i);
  end
end
  