% bar chart practice


%MRR_Brass
MRR_brass = [0.00E+00  2.40E-05 9.13E-04 7.00E-03];
EWR_brass = [0.00E+00 1.72E-03 2.40E-03  1.76E-02];
MRR_cu = [0.00E+00 4.79E-05 1.13E-03 2.79E-03];
EWR_cu = [0.00E+00 7.07E-05 2.55E-04 1.94E-03];

% setting up a double bar plot, using ;
MRR = [0.00E+00 0.00E+00 ; 2.40E-05 4.79E-05 ; 9.13E-04 1.13E-03 ; 7.00E-03 2.79E-03];
EWR = [0.00E+00 0.00E+00 ; 1.72E-03 7.07E-05 ; 2.40E-03 2.55E-04 ; 1.76E-02 1.94E-03];
MRR2 = [0.00E+00 0.00E+00 ; 0.00E+00 0.00E+00 ; 5.91E-05 6.84E-05 ; 7.32E-04 2.24E-03];
EWR2 = [0.00E+00 0.00E+00 ; 0.00E+00 0.00E+00 ; 8.31E-03 2.02E-03 ; 2.03E-02 1.14E-02];


% reorganising x axis labels - must be set as a category because numbers
% are always plotted in increasing order
x = categorical({'1113', '1223', '3335', '55547'});
x = reordercats(x,{'1113', '1223', '3335', '55547'});


tiledlayout(2,2)

ax1=nexttile;
% MRR rods on Steel
b = bar(ax1,categorical(x),MRR);
ylim([0 8.00E-03]);
grid on
ax1title={'MRR of Brass and Cu Rods on 316 Steel Sheets' ' '};
title(ax1,ax1title);
xlabel('Test ID');
ylabel('MRR (g/min)');
lgd = legend('Brass', 'Copper');
lgd.Title.String = 'Electrode Material';
lgd.Location = 'northwest';
%legendtitle('Electrode Material');

ax2=nexttile;
% EWR rods on Steel
b = bar(ax2,categorical(x),EWR);
ylim([0 2.00E-02]);
grid on
ax2title={'EWR of Brass and Cu Rods on 316 Steel Sheets' ' '};
title(ax2,ax2title);
xlabel('Test ID');
ylabel('EWR (g/min)');
%legend('Brass', 'Copper');

ax3=nexttile;
%MRR rods on Zr
b = bar(ax3,categorical(x),MRR2);
ylim([0 2.5E-03]);
grid on
ax3title = {'MRR of Brass and Cu Rods on Zircalloy-4 Sheets' ' '};
title(ax3,ax3title);
xlabel('Test ID');
ylabel('MRR (g/min)');
%legend('Brass', 'Copper');

ax4=nexttile;
% EWR rods on Steel
b = bar(ax4,categorical(x),EWR2);
ylim([0 2.50E-02]);
grid on
ax4title={'EWR of Brass and Cu Rods on Zircalloy-4 Sheets' ' '};
title(ax4,ax4title);
xlabel('Test ID');
ylabel('EWR (g/min)');
%legend('Brass', 'Copper');

