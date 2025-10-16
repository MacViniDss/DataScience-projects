
disp("--- Testes da Solução 1 ---");

% Caso 1: Comida ruim (3), Serviço mediano (6)
C1 = 3; S1 = 6; G1 = calcular_gorjeta(C1, S1);
printf("C: %d, S: %d -> Gorjeta: %d%%\n", C1, S1, G1);

% Caso 2: Comida boa (7), Serviço bom (7)
C2 = 7; S2 = 7; G2 = calcular_gorjeta(C2, S2);
printf("C: %d, S: %d -> Gorjeta: %d%%\n", C2, S2, G2);

% Caso 3: Comida excelente (9), Serviço excelente (9)
C3 = 9; S3 = 9; G3 = calcular_gorjeta(C3, S3);
printf("C: %d, S: %d -> Gorjeta: %d%%\n", C3, S3, G3);

% Caso 4: Comida excelente (9), Serviço ruim (4)
C4 = 9; S4 = 4; G4 = calcular_gorjeta(C4, S4);
printf("C: %d, S: %d -> Gorjeta: %d%%\n", C4, S4, G4);

% Caso 5: Comida (5), Serviço (5)
C5 = 5; S5 = 5; G5 = calcular_gorjeta(C5, S5);
printf("C: %d, S: %d -> Gorjeta: %d%%\n", C5, S5, G5);
