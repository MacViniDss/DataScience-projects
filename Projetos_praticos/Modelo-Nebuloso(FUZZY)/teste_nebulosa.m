% --- Testes da Solução Nebulosa ---

% Caso 1: Comida ruim (3), Serviço mediano (6)
simular_gorjeta(FIS, 3.0, 6.0);

% Caso 2: Comida boa (7), Serviço bom (7)
simular_gorjeta(FIS, 7.0, 7.0);

% Caso 3: Comida excelente (9), Serviço excelente (9)
simular_gorjeta(FIS, 9.0, 9.0);

% Caso 4: Comida excelente (9), Serviço ruim (4)
simular_gorjeta(FIS, 9.0, 4.0);

% Caso 5: Comida (5), Serviço (5) ->
simular_gorjeta(FIS, 5.0, 5.0);

% Caso 6: O ponto de transição - Comida (4.5), Serviço (4.5)
simular_gorjeta(FIS, 4.5, 4.5);
