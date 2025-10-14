FINALIZADO!

Projeto: E-commerce Basket Data — Data Quality Investigation

Objetivo:
Analisar dados de transações de um e-commerce, unindo informações de clientes (customers.csv) e de compras (basket_details.csv), a fim de explorar padrões de comportamento e preparar para análises em SQL e BI.

🚧 Problema encontrado

Durante a fase de integração das tabelas, foi identificado que:

A base de clientes continha 20.000 registros,

Mas apenas 13.871 apareciam em transações,

E mais de 15.000 registros de vendas referenciavam clientes inexistentes na base de clientes.

Isso inviabiliza análises consistentes e dificulta a verificação de métricas por perfil demográfico (como sexo ou faixa etária).

Conclusão:

Optou-se por interromper a evolução analítica e documentar o problema, mantendo o projeto como estudo de data quality e integração entre tabelas.

A próxima etapa será realizada com um novo conjunto de dados limpo e consistente:
Retail Sales Dataset (Kaggle), com foco em modelagem, SQL e dashboard em Looker Studio.

Aprendizado

-Verificar integridade entre tabelas antes de iniciar análises.
-Usar joins para detectar registros órfãos.
-Engenharia de dados feita: valores incoerentes e NaN corrigidos e feita a limpeza;
-Documentar limitações dos dados de forma transparente.
