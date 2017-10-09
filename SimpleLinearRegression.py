import statsmodels.api as sm
import numpy as np
import pandas as pd
from sklearn import datasets

data = datasets.load_boston()

#print(data.DESCR)
#print(data.feature_names)
#print(data.target)

df=pd.DataFrame(data.data,columns=data.feature_names)
target=pd.DataFrame(data.target,columns=["MEDV"])
#print(df)
print(target)
X = df[["RM", "LSTAT"]]
y = target["MEDV"]
model = sm.OLS(y, X).fit()
predictions = model.predict(X)
#print(model.summary())