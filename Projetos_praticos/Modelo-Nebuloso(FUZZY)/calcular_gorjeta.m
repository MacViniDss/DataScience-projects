function gorjeta = calcular_gorjeta(qualidade_comida, qualidade_servico)

    LIMITE_RUIM = 4;
    LIMITE_BOM = 7;
    % Regras:

    %Gorjeta Pequena (5%)
    if (qualidade_comida <= LIMITE_RUIM) || (qualidade_servico <= LIMITE_RUIM)
        gorjeta = 5; % Gorjeta pequena, mais próxima de 5%
        return;
    end

    %Gorjeta Generosa (15%)
    if (qualidade_comida > LIMITE_BOM) && (qualidade_servico > LIMITE_BOM)
        gorjeta = 15; % Gorjeta generosa, mais próxima de 15%
        return;
    end

    %Gorjeta Mediana (10%)
    gorjeta = 10; % Gorjeta mediana, mais próxima de 10%

end
