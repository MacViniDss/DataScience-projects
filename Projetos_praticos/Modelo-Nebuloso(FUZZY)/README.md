**INTRODUÇÃO**

O presente trabalho tem o objetivo de introduzir o uso do programa GNU Octave, que é usado para experimento e a solução de problemas numéricos, com ele vamos resolver uma simples situação de cálculo de gorjeta com dois caminhos diferentes, a primeira solução será feita com uma metodologia direta e a segunda usando a Lógica Nebulosa. 
- **Critêrios:**
• Se a comida foi de qualidade ruim ou fomos mal atendidos, vamos deixar uma gorjeta pequena, mais próxima de 5%;
•Se o serviço for bom, vamos deixar uma gorjeta mediana, mais próxima de 10%;
•Se a comida ou o serviço nos surpreenderam positivamente, vamos deixar uma gorjeta generosa, mais próxima de 15%.

**DESENVOLVIMENTO**
A Lógica Nebulosa é uma técnica da Inteligência Artificial projetada para lidar com a imprecisão e a informações vagas no mundo real. Ao contrário da lógica booleana tradicional, que opera apenas com valores exatos (0 ou 1, Falso ou Verdadeiro), a Lógica Nebulosa permite um raciocínio aproximado ao admitir graus de verdade. Na nossa linguagem conceitos vagos, como "quente", "frio", "alto" e "baixo", são transformados em Conjuntos Nebulosos. A Função de Pertinência define em um grau que varia de 0 a 1, o quanto um elemento numérico pertence a um determinado termo linguístico.
  A implementação de um sistema de Lógica Nebulosa segue três etapas:
- 1. **Fuzzificação:** É o processo inicial que converte variáveis de entrada numéricas em
valores linguísticos nebulosos
- 2. **Inferência:** O núcleo do sistema, onde as conclusões são tiradas com base na
regras definidas pelo especialista.
- 3. **Defuzzificação:**É o processo final que reverte o resultado nebuloso (um conjunto de
graus de pertinência) em um único valor numérico e prático que pode ser aplicado.

**CONCLUSÃO**
Ao executar os dois conjuntos de código no Octave:
- 1. **Solução Simples**: A gorjeta sempre será 5%, 10% ou 15%. Por exemplo, uma comida de nota 4 resulta em 5% (Ruim), enquanto uma nota 5 resulta em 10% (Mediano/Bom), mesmo que a diferença de qualidade seja mínima (o limite é rígido).[Resultado1](Resultado_simples.png)
- 2. **Solução Nebulosa**: A gorjeta será um valor contínuo (ex: 9.87%, 13.56%, 5.12%). Isso reflete a natureza difusa do julgamento. No "Caso 6" da Lógica Nebulosa, o valor da gorjeta não será 5% nem 10%, mas sim um ponto intermediário, pois as notas de 4.5 pertencem parcialmente aos conjuntos "Ruim" e "Mediano", permitindo que o sistema infira um valor de gorjeta que é uma combinação ponderada de "Pequena" e "Mediana". Isso gera um resultado mais intuitivo para o julgamento humano.[Resultado1](Resultado_nebulosa.png)
