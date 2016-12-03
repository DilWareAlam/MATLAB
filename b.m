clear
clc
 
[x] = [12 6 35 20];
[y] = [50 30 80 76];
m = 100;
c = -1000;
n = length(x);
 
some_data = 0.001;
 
max_iterations = 100;
error_list  = [];
for i=1:1:max_iterations
        py = ((x .*m) + c);
        
        %py = m*x +c;
        er = (1/n)*(py-y).^2;
        err_sum = sum(er);
        
        dm = (2/n) *x.*(py-y);
        dm_v = sum( dm );
 
        dc = (2/n) .* (py - y );
        dc_v = sum(dc);
 
        m = m - (dm_v * some_data);
        c = c - (dc_v * some_data);
        %er = (1/n)*(py-y).^2;
        %err_sum = sum(er);
        error_list = [error_list, err_sum];
 
        
end
plot(error_list)
fprintf('%f,%f,%f,%f,%f\n',dm_v,dc_v,m,c,err_sum)
fprintf ('y=%f*x+%f\n',m,c)
 


