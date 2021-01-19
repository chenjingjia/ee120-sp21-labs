subplot(3,2,1)
stem([-4:4],[0,0,0,0,1,0,0,0,0],'b-','LineWidth',2)
ylim([-0.1,1.1])
xlabel('n')
ylabel('\delta [n]')
set(gca,'FontSize',18)
set(gca,'ytick',[0,1])
grid on

subplot(3,2,2)
stem([-4:4],[1,1,1,1,1,1,1,1,1],'b-','LineWidth',2)
ylim([-0.1,1.1])
xlim([-4.1,4.1])

xlabel('t')
ylabel('Comb(t)')
set(gca,'FontSize',18)
set(gca,'ytick',[0,1])
set(gca,'xticklabel',{'-4T','-3T','-2T','-T',0,'T','2T','3T','4T'})
grid on

subplot(3,2,3)
plot([-6:0.01:2],rectangularPulse(-4,-1,[-6:0.01:2]),'b-','LineWidth',2)
ylim([-0.1,1.1])
xlim([-6.1,2.1])

xlabel('t')
ylabel('Comb(t)')
set(gca,'FontSize',18)
set(gca,'ytick',[0,1])
% set(gca,'xticklabel',{'-4T','-3T','-2T','-T',0,'T','2T','3T','4T'})
grid on


subplot(3,2,4)
plot([-4:0.001:4],sin([-4:0.001:4]*pi + pi/4),'b-','LineWidth',2)
ylim([-1.1,1.1])
xlim([-4.1,4.1])
xlabel('t')
ylabel('sin(\pi t+ \pi/4)')
set(gca,'FontSize',18)
set(gca,'ytick',[0,1])
set(gca,'xtick',[-4:1:4]+0.25)

grid on

set(gca,'XAxisLocation','origin')
set(gca,'YAxisLocation','origin')

subplot(3,2,5)
tt = [-10:0.0001:10];
plot(tt,exp(2*tt).*heaviside(-tt),'b-','LineWidth',2)
xlim([-4,4])
ylim([-0.1,1.1])
set(gca,'ytick',[0,0.1353,1])
set(gca,'yticklabel',{'0','e^-^2','1'})

set(gca,'FontSize',18)
grid on
xlabel('t')
ylabel('e^2^t u(-t)')

subplot(3,2,6)
tt = [1:10];
stem([-10:10],[zeros(1,10),1,exp(-tt)],'b-','LineWidth',2)
xlim([-4,8])
ylim([-0.1,1.1])
set(gca,'ytick',[0,1])
set(gca,'FontSize',18)
grid on
xlabel('n')
ylabel('e^-^n u[n]')

for ind = 1:6
    subplot(3,2,ind)
title(['(' num2str(ind) ')'])
end