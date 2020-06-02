g = load('gate-list');

gate_list = g.gate_list;
gate_M_xx = zeros(18,100);
gate_M_xy = zeros(18,100);
%71
num = 71;
Fermi_nergy = E(num)
for m = 1:100
    data= load(['data',num2str(m-1),'.mat']);
    gate_M_xx(:,m) = data.xx(:,num);
    gate_M_xy(:,m) = data.xy(:,num);
end
figure;
 imagesc(E,M,real(gate_M_xy))
 axis xy
 title('R_{xy}')
 xlabel('V_g')
 ylabel('Field')
 colorbar
 colormap('jet')
 figure;
 imagesc(E,M,real(gate_M_xx))
 title('R_{xx}')
 axis xy
  xlabel('V_g')
 ylabel('Field')
  colorbar
   colormap('jet')