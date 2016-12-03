clear
clc
 
[x] = [1.0200
1.0800
1.1400
1.2000
1.2600
1.3200
1.3800
1.4400
1.5000];

[y] = [-5.882
-5.338
-4.540
-3.724
-3.063
-2.587
-2.263
-2.030
-1.878
-1.764
-1.640
-1.532
-1.398
-1.291
-1.172
-1.093
-1.030
-0.9764
-0.9264
-0.8750
-0.8194
-0.7551
-0.7064
-0.6667
-0.6358
];

p = 1000000000;
q = 20;
c = -100;
n = length(x);
 
some_data = 0.001;
 
max_iterations = 10000;
error_list  = [];

for i=1:1:max_iterations
        py = ((p.*log(q.*x))+c);
        
        
        er = (py-y).^2;
        err_sum = sum(er);
        
        dm = 2.*(log(q.*x).*((p.*log(q.*x))+c-y));
        dm_v = sum( dm );
        
        dv=2.*(((p.*log(q.*x))+c-y)*(p./q));
        dv_v=sum(dv);

        dc = 2.*(p.*log(q.*x)+c-y);
        dc_v = sum(dc);

        p = p - (dm_v .* some_data);
        q = q - (dv_v .* some_data);
        c = c - (dc_v .* some_data);
        
        er =(py-y).^2;
        err_sum = sum(er);
        
        error_list = [error_list, err_sum];

        
end
plot(error_list)
fprintf('%f,%f,%f,%f,%f,%f,%f\n',dm_v,dv_v,dc_v,p,q,c,err_sum);
fprintf ('y=%f*log(%f*x)+%f\n',p,q,c);