
function index(H,dt,fid)
    g=-9.8;
    v=0;
    t=0;
    fid = fopen('magic.dot','w');
    %fprintf(fid,'Time\t    Height\t    Velocity\n\n');
    for i=1:45
        t(i+1)=t(i) + (dt);
        v(i+1)=v(i) + (g) * (dt);
        H(i+1)=H(i) + v(i)*(dt);
        fprintf(fid,'%f\t %f\t %f\t\n',t(i+1),H(i+1),v(i+1));
    end
        fclose(fid);
        
    load magic.dot
    tx=magic(:,1);
    hy=magic(:,2);
   
    h=plot(tx,hy,'o');
    xlabel('time since jump from plane (seconds)','FontSize',15)
    ylabel('height above the ground (meters)','FontSize',15)
    title('Man falls from an airplane','FontSize',15)
    grid on;
    axis([min(tx) max(tx) min(hy) max(hy)]);
    for ii = 1:length(tx)
    pause(0.2)
    set(h, 'XData', tx(1:ii), 'YData', hy(1:ii));
    drawnow %// you can probably remove this line, as pause already calls drawnow
    end