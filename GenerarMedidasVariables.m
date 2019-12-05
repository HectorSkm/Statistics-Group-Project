%Medias
MediaCO2 = mean(EmisionesdeCO2);
MediaExport = mean(ExportacionMercaderias);
MediaGDDebt = mean(GDDebt);
MediaGDP = mean(GDP);
MediaImport = mean(ImportComida);
MediaIPC = mean(IPC);
MediaPRural = mean(Poblacionrural);
MediaPUrbana = mean(PoblacionUrbana);
MediaTotalReserves = mean(TotalReserves);

fprintf('Medias de variables economicas: \n\n')
fprintf('Exportacion Mercaderias %d\n',MediaExport);
fprintf('Importacion productos alimenticios %d\n',MediaImport);
fprintf('IPC %d\n\n',MediaIPC);

fprintf('Medias de variables culturales: \n\n')
fprintf('Emisiones de CO2 %d\n',MediaCO2);
fprintf('Poblacion Rural %d\n',MediaPRural);
fprintf('Poblacion Urbana %d\n\n',MediaPUrbana);

fprintf('Medias de variables politicas: \n\n')
fprintf('GDP %d\n',MediaGDP);
fprintf('Reservas Financieras Totales %d\n',MediaTotalReserves);
fprintf('Deuda del gobierno %d\n\n',MediaGDDebt);

%Medianas
MedianaCO2 = median(EmisionesdeCO2);
MedianaExport = median(ExportacionMercaderias);
MedianaGDDebt = median(GDDebt);
MedianaGDP = median(GDP);
MedianaImport = median(ImportComida);
MedianaIPC = median(IPC);
MedianaPRural = median(Poblacionrural);
MedianaPUrbana = median(PoblacionUrbana);
MedianaTotalReserves = median(TotalReserves);

fprintf('Medianas de variables economicas: \n\n')
fprintf('Exportacion Mercaderias %d\n',MedianaExport);
fprintf('Importacion productos alimenticios %d\n',MedianaImport);
fprintf('IPC %d\n\n',MedianaIPC);

fprintf('Medianas de variables culturales: \n\n')
fprintf('Emisiones de CO2 %d\n',MedianaCO2);
fprintf('Poblacion Rural %d\n',MedianaPRural);
fprintf('Poblacion Urbana %d\n\n',MedianaPUrbana);

fprintf('Medianas de variables politicas: \n\n')
fprintf('GDP %d\n',MedianaGDP);
fprintf('Reservas Financieras Totales %d\n',MedianaTotalReserves);
fprintf('Deuda del gobierno %d\n\n',MedianaGDDebt);

%Modas
ModaCO2 = mode(EmisionesdeCO2);
ModaExport = mode(ExportacionMercaderias);
ModaGDDebt = mode(GDDebt);
ModaGDP = mode(GDP);
ModaImport = mode(ImportComida);
ModaIPC = mode(IPC);
ModaPRural = mode(Poblacionrural);
ModaPUrbana = mode(PoblacionUrbana);
ModaTotalReserves = mode(TotalReserves);

fprintf('Modas de variables economicas: \n\n')
fprintf('Exportacion Mercaderias %d\n',ModaExport);
fprintf('Importacion productos alimenticios %d\n',ModaImport);
fprintf('IPC %d\n\n',ModaIPC);

fprintf('Modas de variables culturales: \n\n')
fprintf('Emisiones de CO2 %d\n',ModaCO2);
fprintf('Poblacion Rural %d\n',ModaPRural);
fprintf('Poblacion Urbana %d\n\n',ModaPUrbana);

fprintf('Modas de variables politicas: \n\n')
fprintf('GDP %d\n',ModaGDP);
fprintf('Reservas Financieras Totales %d\n',ModaTotalReserves);
fprintf('Deuda del gobierno %d\n\n',ModaGDDebt);

%Desviaciones tipicas
DCO2 = std(EmisionesdeCO2);
DExport = std(ExportacionMercaderias);
DGDDebt = std(GDDebt);
DGDP = std(GDP);
DImport = std(ImportComida);
DIPC = std(IPC);
DPRural = std(Poblacionrural);
DPUrbana = std(PoblacionUrbana);
DTotalReserves = std(TotalReserves);

fprintf('Desviaciones tipicas de variables economicas: \n\n')
fprintf('Exportacion Mercaderias %d\n',DExport);
fprintf('Importacion productos alimenticios %d\n',DImport);
fprintf('IPC %d\n\n',DIPC);

fprintf('Desviaciones tipicas de variables culturales: \n\n')
fprintf('Emisiones de CO2 %d\n',DCO2);
fprintf('Poblacion Rural %d\n',DPRural);
fprintf('Poblacion Urbana %d\n\n',DPUrbana);

fprintf('Desviaciones tipicas de variables politicas: \n\n')
fprintf('GDP %d\n',DGDP);
fprintf('Reservas Financieras Totales %d\n',DTotalReserves);
fprintf('Deuda del gobierno %d\n\n',DGDDebt);

%Varianzas
VCO2 = var(EmisionesdeCO2);
VExport = var(ExportacionMercaderias);
VGDDebt = var(GDDebt);
VGDP = var(GDP);
VImport = var(ImportComida);
VIPC = var(IPC);
VPRural = var(Poblacionrural);
VPUrbana = var(PoblacionUrbana);
VTotalReserves = var(TotalReserves);

fprintf('Varianzas de variables economicas: \n\n')
fprintf('Exportacion Mercaderias %d\n',VExport);
fprintf('Importacion productos alimenticios %d\n',VImport);
fprintf('IPC %d\n\n',VIPC);

fprintf('Varianzas de variables culturales: \n\n')
fprintf('Emisiones de CO2 %d\n',VCO2);
fprintf('Poblacion Rural %d\n',VPRural);
fprintf('Poblacion Urbana %d\n\n',VPUrbana);

fprintf('Varianzas de variables politicas: \n\n')
fprintf('GDP %d\n',VGDP);
fprintf('Reservas Financieras Totales %d\n',VTotalReserves);
fprintf('Deuda del gobierno %d\n\n',VGDDebt);

%Coeficientes de correlacion

CoCO2Rural = corrcoef(EmisionesdeCO2,Poblacionrural);
CoCO2Urbana = corrcoef(EmisionesdeCO2,PoblacionUrbana);
CoUrbanaRural = corrcoef(PoblacionUrbana,Poblacionrural);
CoIPCExport = corrcoef(IPC,ExportacionMercaderias);
CoIPCImport = corrcoef(IPC,ImportComida);
CoImportExport = corrcoef(ImportComida,ExportacionMercaderias);
CoGDPReserves = corrcoef(GDP1,TotalReserves1);
CoGDPDebt = corrcoef(GDP1,GDDebt);
CoReservesDebt = corrcoef(TotalReserves1,GDDebt);


fprintf('Coeficientes de correlacion de variables economicas: \n\n')
fprintf('IPC y Exportacion de productos\n');
display(CoIPCExport);
fprintf('IPC e Importacion de productos alimenticios\n');
display(CoIPCImport);
fprintf('Importacion de productos alimenticios y Exportacion de productos\n\n');
display(CoImportExport);

fprintf('Coeficientes de correlacion de variables culturales: \n\n')
fprintf('Emisiones de CO2 y Poblacion Rural\n');
display(CoCO2Rural);
fprintf('Emisiones de CO2 y Poblacion Urbana\n');
display(CoCO2Urbana);
fprintf('Poblacion Urbana y Poblacion Rural\n\n');
display(CoUrbanaRural);

fprintf('Coeficientes de correlacion de variables politicas: \n\n')
fprintf('GDP y Reservas Financieras Totales\n');
display(CoGDPReserves);
fprintf('GDP y Deuda del gobierno\n');
display(CoGDPDebt);
fprintf('Reservas Financieras Totales y Deuda del gobierno\n');
display(CoReservesDebt);
