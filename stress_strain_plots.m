
opts = detectImportOptions('StressStrainData.xlsx'); % Setting import options of table to be a double 
opts = setvartype(opts,'double');    % was initially a string in column 1


T=readtable('StressStrainData.xlsx',opts); %importing table data and setting all variables as double

Strain32=T(1:10:end,1); %SS3-2
Stress32=T(1:10:end,2);

Strain41=T(1:10:end,3); %%SS4-1
Stress41=T(1:10:end,4);



sz = 10;

s=scatter(Strain32{:,1},Stress32{:,1},sz);
ylabel('Stress (MPa)');
xlabel('Strain (%)');
title('Stress-Strain for EDM Cut SS-J3 Specimens')
grid on

hold on

scatter(Strain41{:,1},Stress41{:,1},sz);

lgd=legend('SS3Cu-2 Specimen','SS4Cu-1 Specimen');
lgd.Location='southwest';