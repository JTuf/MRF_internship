
opts = detectImportOptions('StressStrainData.xlsx'); % Setting import options of table to be a double 
opts = setvartype(opts,'double');    % was initially a string in column 1


T=readtable('StressStrainData.xlsx',opts); %importing table data and setting all variables as double

Strain32=T(1:10:end,1); %SS3-2
Stress32=T(1:10:end,2);

Strain52=T(1:10:end,11); %%SS5-2
Stress52=T(1:10:end,12);

Strain521=T(1:10:end,13); %%SS5.2-1
Stress521=T(1:10:end,14);

sz = 10;

s=scatter(Strain32{:,1},Stress32{:,1},sz);
ylabel('Stress (MPa)');
xlabel('Strain (%)');
title('Stress-Strain for Fractured EDM Cut SS-J3 Specimens')
grid on

hold on
scatter(Strain52{:,1},Stress52{:,1},sz);
hold on
scatter(Strain521{:,1},Stress521{:,1},sz);
xlim([0 0.05])

lgd=legend('SS3Cu-2 Specimen','SS5Cu-2 Specimen','SS5.2Cu-1 Specimen');
lgd.Location='southeast';

