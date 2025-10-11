import pandas as pd

df_customers = pd.read_csv('customer_details.csv')
df_customers.head()


# In[65]:


df_customers.info()


# In[66]:
# Procurando valores NaN(Not a Number)

df_customers.isna().sum()


# In[67]:


df_customers.sex.value_counts()


# In[68]:

# Substituindo os valores iregulares da coluna 'sex' 
df_customers['sex'] = df_customers['sex'].replace(['kvkktalepsilindi', 'UNKNOWN'], 'Female')
df_customers.sex.value_counts()


# In[69]:

# Valor max e min da col 'customer_age'(idade dos clientes)
df_customers.customer_age.max(), df_customers.customer_age.min()


# In[70]:
# Possivel idade real dos clientes

normal_age = df_customers.loc[(df_customers.customer_age < 110) & (df_customers.customer_age >= 16)]
normal_age.sort_values('customer_age',ascending = False)


# In[71]:

# Descobrindo a idade media de cada 'sex'
age_mean = normal_age.groupby('sex')['customer_age'].mean()
age_mean


# In[72]:
# Substituindo as idades incoerentes com valores medios de cada 'sex'

new_old = (df_customers.customer_age > 110) | (df_customers.customer_age < 16)
df_customers.loc[new_old & (df_customers['sex']=='Male'), 'customer_age'] = 33
df_customers.loc[new_old & (df_customers['sex']=='Female'), 'customer_age'] = 35

df_customers.customer_age.max(),df_customers.customer_age.min() 


# FIM LIMPEZA E ANALISE CUSTOMERS / INICIO LIMPEZA E ANALISE BASKET

# In[73]:

# importando a planilha de vendas
df_basket = pd.read_csv('basket_details.csv')
df_basket.head()


# In[74]:


df_basket.info()


# In[75]:


# Tranformar a coluna 'basket_date' em datetime Dtype
df_basket['basket_date'] = pd.to_datetime(df_basket['basket_date'], errors='coerce')
df_basket.dtypes


# In[76]:


# Nova coluna para representar as compras no mes-ano
df_basket['year_month'] = df_basket['basket_date'].dt.to_period('M').astype(str)


# In[77]:


df_basket.info()


# In[78]:


df_basket.basket_count.max(),df_basket.basket_count.min()


# In[79]:


# Produtos comprados por mes
monthly_sales = df_basket.groupby('year_month')['basket_count'].sum()
monthly_sales


# In[80]:


# Total de compras feitas por clientes
customer_sales = df_basket.groupby('customer_id')['basket_count'].sum().sort_values(ascending = False)
customer_sales.head()


# In[81]:
# Salvando os dados em um novo arquivo

df_basket.to_csv('basket_clean.csv', index=False)
df_customers.to_csv('customer_clean.csv', index=False)

