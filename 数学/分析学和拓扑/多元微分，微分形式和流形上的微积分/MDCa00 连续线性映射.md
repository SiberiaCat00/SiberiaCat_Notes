

# 赋范向量空间间的连续线性映射

## 连续线性映射的定义

### 赋范向量空间间的连续线性映射

>[!definition]
>若$\mathbb E$和$\mathbb F$是两赋范向量空间，$\varphi$是$\mathbb E$和$\mathbb F$间一线性映射，则若$\varphi$是连续的，我们称$\varphi$是一连续线性映射


### 连续线性映射的等价条件，算子范数

若$\mathbb E$和$\mathbb F$是两赋范向量空间，$\varphi$是$\mathbb E$和$\mathbb F$间一线性映射，则下列命题等价：
1. $\varphi$是一连续线性映射
2. $||\varphi|| := \sup_{x\in B(1,0)}||\varphi(x)|| < \infty$
3. $\forall S \text{ bounded in } \mathbb E: \varphi(E) \text{ bounded in }\mathbb F$

>[!proof]
>证明是简易的

>[!definition]
>这$||\varphi||$被称作算子范数。它的确是一个范数。证明也是简易的。我们选取所有$\mathbb E$到$\mathbb F$有界线性算子组成的线性空间，赋予其算子范数，他们构成的赋范向量空间称作有界线性算子空间，记作$\mathcal L(\mathbb E,\mathbb F)$

### 范数等价推出算子范数等价
若$\mathbb E$和$\mathbb F$是两向量空间，分别给定$\mathbb E$和$\mathbb F$两等价范数，则这两空间上各两等价范数导出的算子范数互相等价

>[!proof]
>懒得写证明

### 到Banach空间的有界线性算子空间是Banach空间
若$\mathbb E$和$\mathbb F$是两赋范向量空间，若$\mathbb F$是完备的，则$\mathcal L(\mathbb E,\mathbb F)$是Banach空间






