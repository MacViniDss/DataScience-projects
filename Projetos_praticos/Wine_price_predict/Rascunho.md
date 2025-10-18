**WINE_REVIEWS**
OBJETIVOS: 
- Limpar e explorar os dados;
- Estudar 3 modelos de **regressão** na predição de preços;
- Fazer visualização com **matplotlib** e **seaborn**;
- Fazer umas queries;
- Fazer Dashboard.

1º)Limpeza e exploração do [Dataset](https://kaggle.com/datasets/08c2a76bab1d8480a85869f114c7d9bc4f08bd977c705fec41e8840dc82bb60a)
  - 126.971 entries(linhas) e 14 colunas;
  - 2 colunas excluidas por serem incoerentes e vagas: **'Unnamed: 0'** e **'region_2'**;
  - 8 colunas com valores NaN;
  - Durante a limpeza1 (simples) dimnuir os valores NaN de **'country'**, **'province'** para 30 e **'region_1'** para 18802 usando a moda entres seus valores unicos junto coluna **'winery'**;
  - Ainda na limpeza1 fiz a remoção de valores duplicados;
  - Finalizado a limpeza1 criamos um arquivo **'wine_clean'** que será usado no nosso modelo 1
  - Já na limpeza 2 efetui uma limpeza completa, usando tecnicas de manipulação em **Pandas** para poder completar os valores NaN e ainda ter um resultado preciso;
  - Consegui diminuir os valores NaN na coluna **'region_1'** de 18802 para 755, pegando a moda dessas regiões em cada país:
      - df.groupby(['country'])['region_1'].transform(lambda x: x.fillna(x.mode().iloc[0]) if not x.mode().empty else x)
  - E ainda dropei as linhas que não foram completas:
      - linhas_remover = df.loc[df.country.isna() | df.region_1.isna()].index
      - df.drop(index = linhas_remover, inplace= True)
  - Antes de completar a coluna **'price'** eu preferi dropar os valores outliers(Os 1% mais caro e com mais pontuações)
      - df = df[(df['price'] < df['price'].quantile(0.99)) & (df['points'] < df['points'].quantile(0.99))]
  - Por fim peguei os 8395 valores ausentes em **'price'** e os completei usando a media de seus valores dentro do **MultiIndex** ['country', 'variety', 'points']:
      - df['price'] = df.groupby(['country', 'variety', 'points'])['price'].transform(lambda x: x.fillna(x.median()))
  - Pra terminar deixei todos os valores **object**(str) uniformes
  - Salvei o novo arquivo como "wine_fullclean.csv"

2º) Criando os modelos (Modeling):
