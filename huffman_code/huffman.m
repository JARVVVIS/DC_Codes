%Implement Huffmann code in matlab from scratch%

probs = input('Enter Probabilities'); 
len_p = length(probs);
global Codes
Codes = repmat('-',len_p,1);

global Index
Index = (1:len_p); 


%we need to do L-2 Passes% 

for pass=1:len_p-2
  % For each pass
  
  % Find last 2 probs
  [index_0,index_1] = maxk(probs,2);
  
  %Update codes%
  for i=1:length(index_0)
     row = index_0(i);
     curr_len = length(Codes(row,:));
     Codes(row,curr_len+1) = '0';
  end
  
  for i=1:length(index_1)
    row = index_1(i);
    curr_len = length(Codes(row,:));
    Codes(row,curr_len+1) = '0';
  end
   
  
  %Find the new position%
   sum0=0;
   for i=1:length(index_0)
     sum0=sum0+index_0(i);
   end
   
   sum1=0;
   for i=1:length(index_1)
     sum1=sum1+index_1(i);
   end
   
   sum = sum1+sum2;
   
   %Find new position of sum%
   idx = pos(probs,sum);
   
   for i=idx:len_p
     
       
       
    
    
  