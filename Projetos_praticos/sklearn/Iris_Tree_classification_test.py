

import numpy as np
import pandas as pd
from sklearn import datasets



iris = datasets.load_iris()





df = pd.DataFrame(iris.data, columns= iris.feature_names)

df["species"] = iris.target
df["species_name"] = df["species"].apply(lambda x: iris.target_names[x])

df = df.drop("species", axis = 1)

y_codigos, y_rotulos = df["species_name"].factorize()

df["species_name"] = y_codigos


from sklearn.model_selection import train_test_split
df_train, df_test = train_test_split(df, test_size=0.25, random_state=0)


y_train = df_train.species_name.values
y_test = df_test.species_name.values


del df_train["species_name"]
del df_test["species_name"]





X_train = df_train.values
X_test = df_test.values


from sklearn.tree import DecisionTreeClassifier, plot_tree
dt = DecisionTreeClassifier(max_depth=3)

dt.fit(X_train, y_train)

y_pred = dt.predict(X_train)
y_pred_test= dt.predict(X_test)

print("Train: ",(y_train == y_pred).mean())
print("Test: ",(y_test == y_pred_test).mean())

dt_train= dt.fit(X_train, y_train)

plot_tree(dt_train)






