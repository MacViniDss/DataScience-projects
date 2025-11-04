#!/usr/bin/env python
# coding: utf-8

# In[145]:


import numpy as np
import pandas as pd
from sklearn import datasets


# In[146]:


iris = datasets.load_iris()


# In[147]:


df = pd.DataFrame(iris.data, columns= iris.feature_names)


# In[148]:


df.head()


# In[149]:


df.info()


# In[150]:


df["species"] = iris.target
df["species_name"] = df["species"].apply(lambda x: iris.target_names[x])


# In[151]:


df.head()


# In[152]:


df.info()


# In[153]:


df = df.drop("species", axis = 1)


# In[154]:


df.head()


# In[155]:


y_codigos, y_rotulos = df["species_name"].factorize()

df["species_name"] = y_codigos


# In[156]:


df.head(), df.tail()


# In[157]:


from sklearn.model_selection import train_test_split
df_train, df_test = train_test_split(df, test_size=0.25, random_state=0)


# In[158]:


len(df_train), len(df_test)


# In[159]:


y_train = df_train.species_name.values
y_test = df_test.species_name.values


# In[160]:


del df_train["species_name"]
del df_test["species_name"]


# In[161]:


X_train = df_train.values
X_train[0]


# In[162]:


#Treinando o modelo
from sklearn.linear_model import LogisticRegression

model = LogisticRegression()
model.fit(X_train, y_train)
X_test = df_test.values


# In[163]:


#Validando
y_pred= model.predict(X_test)


# In[164]:


#Precisão
(y_test == y_pred).mean()


# In[165]:


#Testando em Iris qualquer
X_iris = df_test.iloc[[5]].values


# In[166]:


X_iris


# In[167]:


y_iris_pred= model.predict(X_iris)


# In[168]:


# Nossa predição/valor real
y_iris_pred, y_test[5]


# In[ ]:




