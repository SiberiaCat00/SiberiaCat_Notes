# 正交分解，RN导数和换测度积分法则

## Lebesgue-Radon-Nikodym定理

### Lebesgue-Radon-Nikodym定理
同一个可测空间上若有两个$\sigma$有限符号测度$\mu,\nu$，则$\nu$总能写成如下形式：
$$\nu = \lambda + \rho, \ d\rho = \frac{d\rho}{d\mu} d\mu, \ \lambda \perp \mu$$
即同一可测空间上的任意符号测度$\nu$总是能写成垂直于另一符号测度$\mu$的部分和$\mu$下积分的部分

这种分解下$\lambda$是唯一的，$\frac{d\rho}{d\mu}$是$\mu$-a.e唯一的


>证明见[[#Appendix#Lebesgue-Radon-Nikodym定理]]


## Radon-Nikodym 导数的定义，性质和换测度积分法则
### Radon-Nikodym导数的定义
[[#Lebesgue-Radon-Nikodym定理]]中的$\frac{d\rho}{d\mu}$被称作Radon-Nikodym导数

### 一些Radon-Nikodym导数的性质
假设下列$\nu,\nu_{1},\nu_{2},\mu,\lambda$都是可测空间$(X,\mathcal A)$上的$\sigma$有限符号测度
* 线性性质：假设$\nu_{1}$和$\nu_2$相对$\mu$一致连续，则
	$$\frac{d(a\nu_{1}+ b\nu_{2})}{\mu}  =  a\frac{d\nu_{1}}{d\mu} + b\frac{d\nu_{2}}{d\mu}$$
>证明是简单的
* 对求导元素的数乘的性质：若$\nu \ll \mu,a\neq 0$，则有$$\frac{d\nu}{d(a\mu)} = \frac{1}{a}\frac{d\nu}{d\mu}$$
>证明是简单的
* 换测度积分法则：假设$g \in \mathcal{L}_{1}(X,\nu,E)$，$\nu \ll \mu$，则$g\cdot \frac{d\nu}{d\mu} \in \mathcal{L}_{1}(X,\mu,E)$且
	$$\int_{X} g \ d\nu = \int_{X} g\cdot \frac{d\nu}{d\mu} \ d\mu$$
>证明见[[#换测度积分法则]]
* 链式法则：若$\nu\ll\mu\ll\lambda$，则几乎处处有
	$$\frac{d\nu}{d\lambda} = \frac{d\nu}{d\mu}\frac{d\mu}{d\lambda}$$

>证明：考察对任意可测集合$E$，根据链式法则有
>$$\nu(E) = \int_{E} \frac{d\nu}{d\lambda} \ d\lambda = \int_{E}\frac{d\nu}{d\mu}\frac{d\mu}{d\lambda}\ d\lambda$$
>根据Radon-Nikodym导数的唯一性得证

### 更广义的换测度积分法则
若下列$\nu,\mu$都是可测空间$(X,\mathcal L)$上的$\sigma$有限符号测度，$g \in \mathcal{L}_{1}(X,\nu,E)$，则$g\cdot \frac{d\nu}{d\mu} \in \mathcal{L}_{1}(X,\mu,E)$且
$$\int_{X} g \ d\nu = \int_{X} g\cdot \frac{d\nu}{d\mu} \ d\mu + \int_{X} g \ (d\nu -\frac{d\nu}{d\mu} \ d\mu) $$
>通过[[RA06 测度的正交分解和RN导数#Lebesgue-Radon-Nikodym定理]]将$\nu$拆成绝对连续和垂直的部分，再应用换测度积分法则即可





# 等价符号测度，测度同胚和换元法

### 定义：等价的符号测度
若下列$\nu,\mu$都是可测空间$(X,\mathcal A)$上的$\sigma$有限符号测度，当$\nu\ll\mu$且$\mu\ll\nu$的时候我们就说$\mu$与$\nu$等价。

### 等价的符号测度的一些性质
若下列$\nu,\mu$都是可测空间$(X,\mathcal A)$上的$\sigma$有限等价的符号测度，则
* $\mu$上的向量值积分都可以用$\nu$上的向量值积分计算
* $\nu$上的向量值积分都可以用$\mu$上的向量值积分计算
* 几乎处处(两个测度意义下几乎处处等价)下有：
	$$\frac{d\nu}{d\mu} \frac{d\mu}{d\nu} =1$$
> 考虑几乎处处有
> $$\frac{d\mu}{d\mu} = \frac{d\mu}{d\nu} \frac{d\nu}{d\mu}$$
> 即可

## 测度同胚和换元法
### 函数的拉回和诱导测度
若$(X,\mathcal A)$和$(Y,\mathcal B)$都是可测空间，若单射$f\in Y^{X}$满足对任意$X$中可测集合$A$，都有$f(A)$在$Y$中可测，则给定任意$Y$上符号测度$\nu$，如下$(X,\mathcal A)$上的集合函数是符号测度：$$f^{*}\nu := \lambda A . \nu(f(A))$$
>证明是简单的

### 测度同胚
若$(X,\mathcal A)$和$(Y,\mathcal B)$都是可测空间，若双射$f\in Y^{X}$满足：
* 若$A\subseteq X$可测则$f(A)$可测
* 若$B\subseteq Y$可测则$f^{-1}(B)$可测
则$f$就被称作测度同胚。我们还可得出若$f$是测度同胚则$f^{-1}$也是测度同胚

### 测度同胚的性质
若$(X,\mathcal A)$和$(Y,\mathcal B)$都是可测空间，$f\in Y^{X}$是一测度同胚，$\nu$是$Y$上一符号测度，则有如下性质：
* 二次拉回等于自身：
	$$(f^{-1})^{*} f^{*} \nu = \nu$$
>这可以通过考察定义简单证明
* 若$\varphi \in \mathcal S(X,f^{*}\nu,\mathbb E)$，则$\varphi \circ f^{-1} \in \mathcal S(X,\nu,\mathbb E)$，且：
	$$\int_{X}\varphi \ df^{*}\nu = \int_{Y}\varphi \circ f^{-1} \ d\nu$$
* 若$\varphi \in \mathcal S(X,\nu,\mathbb E)$，则$\varphi \circ f \in \mathcal S(X,f^{*}\nu,\mathbb E)$，且
	$$\int_{X}\varphi\circ f \ df^{*}\nu = \int_{Y}\varphi \ d\nu$$
>上述两条将简单函数拆解成特征函数线性组合即可
* 若$g \in \mathcal L_{0}(X,\nu,\mathbb E)$，则$g \circ f \in \mathcal L_{0}(X,f^{*}\nu,\mathbb E)$，且
	$$\int_{X}g\circ f \ df^{*}\nu = \int_{Y}g \ d\nu$$
>考虑简单函数的收敛过程，重新走一遍之前所有小节的证明即可。我肯定不会再写一遍证明的。

### 换元法
若$(X,\mathcal A)$和$(Y,\mathcal B)$都是可测空间，$f\in Y^{X}$是一测度同胚，$\nu$是$Y$上一符号测度，则我们可以用如下方式计算积分：
$$\int_{Y}g \ d\nu =\int_{X}g\circ f \ df^{*}\nu$$
若$\mu$是$X$上一符号测度且$f^{*}\nu \ll \mu$，则可以用$\mu$上积分进一步转换：
$$\int_{Y}g \ d\nu =\int_{X}g\circ f \ df^{*}\nu =\int_{X}g\circ f \cdot \frac{d\nu}{d\mu}  \ d\mu $$


# 在勒贝格测度下求Radon-Nikodym导数
	本节致力于求R^n上满足特定情况的符号测度相对于勒贝格测度的RN导数

## 本H1中的符号的说明
在本H1中，给定欧几里得$R^n$空间任意一种能生成欧几里得拓扑的范数，则所有定理都可看做是在此范数下进行的。
在非$\lambda$表达式的语境下，$\lambda$代表欧几里得空间的勒贝格测度
默认用$R^n$表示带有勒贝格测度的$n$维实空间


## 最大值定理
### 局部可积函数
若定义在$R^n$的子集$X$上的向量值函数$f$满足对于任意$X$中有界集合$K$都有：
$$\int_{K} |f| \ d\lambda$$
是有限的，则这种函数被称作局部可积函数。




### 无名引理
若$\mathcal C$是一$R^n$中开球组成的集合，令$U = \bigcup_{B\in\mathcal C} B$。则对任意小于$\lambda(U)$的正实数$c$，我们都可在$\mathcal C$中选择有限个互相不相交的$B_{i}$使得
$$\sum\limits_{i} \lambda(B_{i}) > 3^{-n}c$$
>证明：由勒贝格测度的正则性，我们可以找到测度大于$c$的$U$的子集$K$。我们在构成$U$的开球中选择$K$的有限覆盖$A_{i}$。取$A_{i}$中半径最大的元素为$B_{1}$，再在$A_{i}$中取*和前面取得的任意元素都不交*的元素中半径最大的元素为$B_{i}$。则当取集合操作完毕时我们能得到半径单调递减的有限开球列$B_{i}$
>此时对于任意$A_{i}$，要么$A_{i}$就在就是某一个$B_{j}$，要么与某一个$B_{j}$相交。若$A_{i}$与某一个$B_{j}$相交，则取指标最小的与$A_{i}$相交的集合$B_{k}$。由于我们的取值总是取得的满足条件的半径最大的元素，所以$B_{k}$的半径不小于$A_{i}$。设中心点和$B_{k}$相同且半径三倍于$B_{k}$的开球为$B_{k}^{*}$由三角不等式可以证明$A_{i}\in B_{k}^{*}$。从而：
>$$\lambda(K) \leq \lambda(\bigcup_{k} B_{k}^{*}) \leq \sum\limits_{k} \lambda (B_{k}^{*}) = 3^{n} \sum\limits_{k} \lambda (B_{k})$$
>所以
>$$\lambda (B_{k}) \geq 3^{-n}\lambda(K)>3^{-n}c$$

### 积分平均值
若测度空间$(X,\mathcal A,\mu)$上有符号可积函数$f$，则我们定义$f$在可测集$S$上的积分平均值为：
$$A_{S}: = \frac{1}{\mu(S)}\int_{S} f \ d\mu$$
若此测度空间为$R^n$，则我们定义如下函数：
$$A_{\bullet}f(\bullet) := \lambda(r,a). \frac{1}{\mu(B(r,a))}\int_{B(r,a)} f \ d\mu \in \mathbb E^{((0,+\infty),X)}$$
此函数被叫做*开球平均值函数*

### 局部可积函数的开球积分平均值函数是连续的
若$f$是$R^n$上某一开集$X$上的一局部可积向量值函数，则$A_{\bullet}f(\bullet)$是连续的
>假设$(r_i,a_i)\rightarrow (r,a)$，则必有一正整数$N$使得：
>$$\forall i>N: |r_{i} -r|<1, |a_{i}- a|<1$$
>此时我们能得知：
>$$\forall i>N: B(r_i,a_{i})\subseteq B(r+2,a)$$
>由$f$是局部可积的，我们可以得知：
>$$\int_{X} |\kappa_{B(r+2,a)}f| \ d\mu =\int_{B(r+2,a)} |f| \ d\mu < \infty$$
>且$|\kappa_{B(r_i,a_{i})} f| <|\kappa_{B(r+2,a)}f|$，$\kappa_{B(r_i,a_{i})} f \rightarrow \kappa_{B(r+2,a)}f$，由控制收敛定理：
>$$\int_{X} \kappa_{B(r_i,a_{i})} f \ d\mu \rightarrow\int_{B(r+2,a)} \kappa_{B(r,a)} f \ d\mu$$
>这证明了
>$$\int_{B(r,a)} f \ d\mu$$
>是连续的。根据之前的内容，开球的测度是半径的连续函数。从而$A_{\bullet}f(\bullet)$是连续的

### Hardy-Littlewood最大值函数
若$f$是$R^n$上某一开集$X$上的一局部可积向量值函数，定义$f$的*Hardy-Littlewood最大值函数*为：
$$H f := \lambda x. \sup_{r>0} A_{r}|f|(x)$$
此函数是可测的
>可测性可以由分析$(a,+\infty)$的原象得到

### 最大值定理









****
****
# Appendix

同一个可测空间上若有两个$\sigma$有限符号测度$\mu,\nu$，则$\nu$总能写成如下形式：
$$\nu = \lambda + \rho, \ d\rho = \frac{d\rho}{d\mu} d\mu, \ \lambda \perp \mu$$
其中$\lambda$和$\rho$都是$\sigma$有限正测度

即同一可测空间上的任意符号测度$\nu$总是能写成垂直于另一符号测度$\mu$的部分和$\mu$下积分的部分，且这种分解下$\frac{d\rho}{d\mu}$是$\mu$-a.e唯一的，$\lambda$是唯一的


### 无名引理
若可测空间$(X,\mathcal A)$上有两测度$\mu,\nu$，则要么$\mu \perp \nu$，要么存在一正数$\varepsilon$和一$\mu$下正测度集合$A$使得在$A$上$\nu\geq \varepsilon \mu$(也就是说$A$是$\nu-\varepsilon \mu$正集)

>将$X$在$\nu-i^{-1}\mu$的意义下Hahn分解至$P_{i}\cup N_{i}$，设$P:= \bigcup_{i} P_{i}, N:= \bigcap_{i} N_{i}$，则$P = X-N$。
>根据定义$N$为$\nu-i^{-1}\mu$的负集，从而有$0\leq \nu(N)\leq i^{-1}\mu(N)$，可以得知$\nu(N) = 0$。
>若$\mu(P) = 0$，则满足$\nu \perp \mu$
>若$\mu(P)>0$，则存在一$i$满足$P_{i}>0$且$P_{i}$为$\nu-i^{-1}\mu$正集



### $\nu,\mu$都是有限测度的情况的证明

**构造一个特殊的函数类$\mathcal F$**
设$$\mathcal F := \left\{ f\in \mathcal L_{0} (X,\overline{R^{+}})\left|\forall E\in \mathcal A: \int_{X} f \ d\mu \leq \nu(E) \right. \right\}$$
即$\mathcal F$是所有(在任意可测集合上积分小于$\nu$测度)的非负可测函数组成的集合

**证明$\mathcal F$中函数在测度$\mu$和集合$X$上积分有上界**
由于$\nu$是有限测度空间，*我们得知这类函数的积分有一个上确界$a$*，即：
$$a:= \sup_{f\in \mathcal F} \int_{X} f \ d\mu \leq \nu(E)$$

**证明$\mathcal F$中函数对于有限元素取最大值这个操作封闭**
若$f,g \in \mathcal F$，假设$h:= f \vee g$，则对于任意可测集合$E$，我们有：
$$\int_{E} h \ d\mu = \int_{E \cap [f\geq g]} f \ d\mu + \int_{E\cap [f<g]} g \ d\mu \leq \nu(E\cap [f\geq g]) + \nu(E\cap [f<g]) = \nu(E)$$

这说明了这类函数里面任意两个函数的最大值函数也在这类函数里。再通过数学归纳法我们可以证明：*这个函数类对取有限个元素的最大值的操作封闭*。

**证明$\mathcal F$中函数对于可数元素取最大值这个操作封闭**
假设从$\mathcal F$中取出一列函数$f_{i}$，设这一列函数的上界函数为$f$，现假设前$n$项的上界为$g_{i}$，则$g_{i}$一定逐点收敛于$f$且$f$可测。

通过上面的证明我们能得到对任意可测集合$E$，有
$$\int_{E}g_{i} \ d\mu \leq \nu(E)$$
再由于[[RA02 非负扩展可测函数的积分#单调收敛定理]]和$g_{i}$单调收敛于$f$，我们能得知
$$\int_{E}f\ d\mu \leq \nu (E)$$
从而$f$也在$\mathcal F$中

**构造目标函数和目标测度**
现在我们在$\mathcal F$中找到一列积分趋近于$a$的函数$f_{i}$(出于上确界的定义，这是一定能找到的)，则$f_{i}$的上确界$f$也在$\mathcal F$中且$\int_{X}f\ d\mu = a$。
我们还定义$d\lambda = d\nu - fd\mu$

**证明目标函数和目标测度符合要求**
我们将会证明$\lambda$垂直于$\mu$。假设$\lambda$并不垂直于$\mu$，则由[[#无名引理]]，存在某一集合$A$和正实数$\varepsilon$使得$\mu(A)>0$且$\lambda\geq \varepsilon \mu$。这说明对于任意可测集合$X$
$$\nu(X) - \int_{X} f\ d\mu \geq\nu(X\cap A) - \int_{X\cap A} f\ d\mu \geq \int_{A} \varepsilon \ d\mu$$
即
$$ \nu(X) - \int_{X} (f +  \varepsilon \kappa_{A})\ d\mu=\nu(X) - \int_{X} f\ d\mu - \int_{X} \varepsilon \kappa_{A}  = \nu(X) - \int_{X} f\ d\mu - \int_{X\cap A} \varepsilon \ d\mu\geq  0$$
从而证明$f+\varepsilon \kappa_{A}$也是$\mathcal F$的元素，但是$\int_{X} (f+\varepsilon \kappa_{A})\ d\mu> a$，这是不可能的

**证明这种分解是唯一的**
假设除了上一条证明外还能如此分解：$d\nu = d\lambda' + f'd\mu$，则我们能得到
$$d\lambda - d\lambda' = (f-f')d\mu$$
我们可以证明*垂直相同符号测度的两符号测度的差也垂直于那一符号测度*，从而这能说明$\lambda - \lambda' \ll \mu$的同时$\lambda - \lambda' \perp \mu$。这两条结合起来能说明$\lambda - \lambda' =0$，$f- f' = 0$ a.e。

*这种情况下$\lambda$和$\rho$都是有限测度*


### $\nu,\mu$都是$\sigma$有限测度的情况的证明
**那就拆成有限！懒得写了**

### $\nu,\mu$都是$\sigma$有限符号测度的情况的证明
**那就拆成$\sigma$有限测度！懒得写了**

## 换测度积分法则
若下列$\nu,\mu$都是可测空间$(X,\mathcal A)$上的$\sigma$有限符号测度，$g \in \mathcal{L}_{1}(X,\nu,E)$，$\nu \ll \mu$，则$g\cdot \frac{d\nu}{d\mu} \in \mathcal{L}_{1}(X,\mu,E)$且
	$$\int_{X} g \ d\nu = \int_{X} g\cdot \frac{d\nu}{d\mu} \ d\mu$$

### $\nu$和$\mu$都是测度的情况的证明
找到一列$\mathcal{L}_{1}(X,\nu,E)$趋近于$g$的简单函数$f_{i}$(由[[RA03 向量可积函数的积分#$ mathcal S(X, mu, mathbb E)$在$ mathcal L_{1}(X, mu, mathbb E)$中稠密|这个定理]]找到)，通过[[RA03 向量可积函数的积分#在$ mathcal L_{1}(X, mu, mathbb E)$中函数列收敛于某一函数则存在一子列在$ mathcal L_{0}(X, mu, mathbb E)$中收敛于该函数|这个定理]]找到其子列$g_i$满足同时在$\mathcal{L}_{1}(X,\nu,E)$和$\mathcal{L}_{0}(X,\nu,E)$中收敛于$g$。则$g_i$在某一个$\nu$中零测集$A$外逐点收敛至$g$。$g_{i}\frac{d\nu}{d\mu}$是$\mu$可测的。

**证明$g_{i}\frac{d\nu}{d\mu}$在$\mathcal{L}_{0}(X,\mu,E)$**中收敛至$g\frac{d\nu}{d\mu}$**
因为$\nu(A)=0$，所以$\int_{A} \frac{d\nu}{d\mu} \ d\mu=0$。简易证明得到在$A$上$\frac{d\nu}{d\mu} =0$ $\mu$-a.e。所以在$A$上$g_{i}\frac{d\nu}{d\mu} =0$ $\mu$-a.e且$g\frac{d\nu}{d\mu} =0$ $\mu$-a.e。从而在$A$上$g_{i}\frac{d\nu}{d\mu} \rightarrow g\frac{d\nu}{d\mu}$ $\mu$-a.e。在$A^{c}$上$g_{i}\frac{d\nu}{d\mu}$逐点收敛于$g\frac{d\nu}{d\mu}$，从而证毕
这同时说明了

**证明$g_{i}\frac{d\nu}{d\mu}$在$\mathcal{L}_{1}(X,\mu,E)$为柯西列**
容易证明对简单函数有
$$\int_{X}\varphi \ d\nu = \int_{X} \varphi\cdot \frac{d\nu}{d\mu} \ d\mu$$
由于
$$\left|g_{i}\frac{d\nu}{d\mu}-g_{j}\frac{d\nu}{d\mu}\right|_{\mathcal{L}_{1}(X,\mu,E)} =
\int_{X} \left|g_{i}-g_{j}\right|\frac{d\nu}{d\mu}\ d\mu =\int_{X} \left|g_{i}-g_{j}\right|\ d\nu = |g_{i}-g_{j}|_{\mathcal{L}_{1}(X,\mu,E)}  $$
从而$g_{i}\frac{d\nu}{d\mu}$在$\mathcal{L}_{1}(X,\mu,E)$为柯西列

**应用收敛的有关定理**
应用[[RA03 向量可积函数的积分#在$ mathcal L_{1}(X, mu, mathbb E)$中函数列为Cauthy列且$ mathcal L_{0}(X, mu, mathbb E)$收敛于某函数则该函数列也$ mathcal L_{1}(X, mu, mathbb E)$中收敛于该函数|这个定理]]得到在$\mathcal{L}_{1}(X,\mu,E)$中$g_{i}\frac{d\nu}{d\mu}$收敛至$g\frac{d\nu}{d\mu}$。从而：
$$\int_{X} g\cdot \frac{d\nu}{d\mu} \ d\mu =\lim_{i}\int_{X}g_{i}\frac{d\nu}{d\mu}\ d\mu = \lim_{i}\int_{X}g_{i}\ d\nu = \int_{X} g \ d\nu $$

### $\nu$和$\mu$都是符号测度的情况的证明
将$\nu$和$\mu$同时进行Hahn分解至$A,B,C,D$四个集合，分别计算其积分即可。