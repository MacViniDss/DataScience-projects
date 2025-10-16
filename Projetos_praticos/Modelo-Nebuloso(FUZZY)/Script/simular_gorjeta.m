
pkg load fuzzy-logic-toolkit

FIS = newfis('CalculoGorjeta');

%CRIAR VARIÁVEIS DE ENTRADA E SUAS FUNÇÕES DE PERTINÊNCIA

FIS = addvar(FIS, 'input', 'comida', [0 10]);
FIS = addmf(FIS, 'input', 1, 'ruim', 'trimf', [0 1 5]);
FIS = addmf(FIS, 'input', 1, 'mediana', 'trimf', [2 5 8]);
FIS = addmf(FIS, 'input', 1, 'boa', 'trimf', [5 9 10]);

% ENTRADA 2: Servico (0 a 10)
FIS = addvar(FIS, 'input', 'servico', [0 10]);
FIS = addmf(FIS, 'input', 2, 'ruim', 'trimf', [0 1 5]);
FIS = addmf(FIS, 'input', 2, 'mediano', 'trimf', [2 5 8]);
FIS = addmf(FIS, 'input', 2, 'bom', 'trimf', [5 9 10]);

% 3. CRIAR VARIÁVEL DE SAÍDA E SUAS FUNÇÕES DE PERTINÊNCIA

% SAÍDA: Gorjeta (0 a 20%)
FIS = addvar(FIS, 'output', 'gorjeta', [0 20]);
% Conjunto (~5%):
FIS = addmf(FIS, 'output', 1, 'pequena', 'trimf', [0 5 10]);
% Conjunto (~10%):
FIS = addmf(FIS, 'output', 1, 'mediana', 'trimf', [5 10 15]);
% Conjunto (~15%):
FIS = addmf(FIS, 'output', 1, 'generosa', 'trimf', [10 15 20]);

% 4. CRIAR AS REGRAS

% Se a comida foi de qualidade ruim OU fomos mal atendidos, gorjeta PEQUENA (5%)
regras(1, :) = [1 0 1 2 1];
regras(2, :) = [0 1 1 2 1];
% Se a comida e o serviço forem medianos/bons, gorjeta MEDIANA (10%)
regras(3, :) = [2 2 2 1 1];
regras(4, :) = [2 3 2 1 1];
regras(5, :) = [3 2 2 1 1];
% Se a comida OU o serviço for positivo, gorjeta GENEROSA (15%)
regras(6, :) = [3 3 3 1 1];

% Adiciona as regras ao FIS
FIS = addrule(FIS, regras);

% Define o método de inferência e de defuzzificação
FIS.andMethod = 'min';
FIS.orMethod = 'max';
FIS.defuzzMethod = 'centroid';

% Função para simular e exibir o resultado
function simular_gorjeta(FIS, comida_val, servico_val)
    input_values = [comida_val servico_val];
    output = evalfis(input_values, FIS);
    printf("C: %.1f, S: %.1f -> Gorjeta: %.2f%%\n", comida_val, servico_val, output);
end

