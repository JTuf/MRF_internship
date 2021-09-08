
opts = detectImportOptions('StressStrainData.xlsx'); % Setting import options of table to be a double 
opts = setvartype(opts,'double');    % was initially a string in column 1


T=readtable('StressStrainData.xlsx',opts); %importing table data and setting all variables as double

sz=10;

Strain41=T(1:10:end,3); %%SS4-1
Stress41=T(1:10:end,4);

Strain411=T(1:10:end,5); %%SS4.1-1
Stress411=T(1:10:end,6);

Strain421=T(1:10:end,7); %%SS4.2-1
Stress421=T(1:10:end,8);

Strain43=T(1:10:end,9); %%SS4-3
Stress43=T(1:10:end,10);

s=scatter(Strain41{:,1},Stress41{:,1},sz);
ylabel('Stress (MPa)');
xlabel('Strain (%)');
title('Stress-Strain for Non-fractured EDM Cut SS-J3 Specimens')
grid on
xlim([0 0.35])

hold on
scatter(Strain411{:,1},Stress411{:,1},sz);
hold on
scatter(Strain421{:,1},Stress421{:,1},sz);
hold on
scatter(Strain43{:,1},Stress43{:,1},sz);
lgd=legend('SS4Cu-1 Specimen','SS4.1Cu-1 Specimen','SS4.2Cu-1 Specimen','SS4Cu-3 Specimen');
lgd.Location='southeast';
