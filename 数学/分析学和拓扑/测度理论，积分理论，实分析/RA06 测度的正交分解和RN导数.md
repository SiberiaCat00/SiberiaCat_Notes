# 正交分解，RN导数和换测度积分法则

## Lebesgue-Radon-Nikodym定理

### Lebesgue-Radon-Nikodym定理
同一个可测空间上若有两个$\sigma$有限符号测度$\mu,\nu$，则$\nu$总能写成如下形式：
>[!Proof]
$$\nu = \lambda + \rho, \ d\rho = \frac{d\rho}{d\mu} d\mu, \ \lambda \perp \mu$$
即同一可测空间上的任意符号测度$\nu$总是能写成垂直于另一符号测度$\mu$的部分和$\mu$下积分的部分

这种分解下$\lambda$是唯一的，$\frac{d\rho}{d\mu}$是$\mu$-a.e唯一的

>[!Proof]
>证明见[[#Appendix#Lebesgue-Radon-Nikodym定理]]


## Radon-Nikodym 导数的定义，性质和换测度积分法则
### Radon-Nikodym导数的定义
[[#Lebesgue-Radon-Nikodym定理]]中的$\frac{d\rho}{d\mu}$被称作Radon-Nikodym导数

### 一些Radon-Nikodym导数的性质
假设下列$\nu,\nu_{1},\nu_{2},\mu,\lambda$都是可测空间$(X,\mathcal A)$上的$\sigma$有限符号测度
* 线性性质：假设$\nu_{1}$和$\nu_2$相对$\mu$一致连续，则
	$$\frac{d(a\nu_{1}+ b\nu_{2})}{\mu}  =  a\frac{d\nu_{1}}{d\mu} + b\frac{d\nu_{2}}{d\mu}$$

>[!Proof]
>证明是简单的
* 对求导元素的数乘的性质：若$\nu \ll \mu,a\neq 0$，则有$$\frac{d\nu}{d(a\mu)} = \frac{1}{a}\frac{d\nu}{d\mu}$$

>[!Proof]
>证明是简单的
* 换测度积分法则：假设$g \in \mathcal{L}_{1}(X,\nu,E)$，$\nu \ll \mu$，则$g\cdot \frac{d\nu}{d\mu} \in \mathcal{L}_{1}(X,\mu,E)$且
	$$\int_{X} g \ d\nu = \int_{X} g\cdot \frac{d\nu}{d\mu} \ d\mu$$
	
>[!Proof]
>证明见[[#换测度积分法则]]
* 链式法则：若$\nu\ll\mu\ll\lambda$，则几乎处处有
	$$\frac{d\nu}{d\lambda} = \frac{d\nu}{d\mu}\frac{d\mu}{d\lambda}$$
	
>[!Proof]
>证明：考察对任意可测集合$E$，根据链式法则有
>$$\nu(E) = \int_{E} \frac{d\nu}{d\lambda} \ d\lambda = \int_{E}\frac{d\nu}{d\mu}\frac{d\mu}{d\lambda}\ d\lambda$$
>根据Radon-Nikodym导数的唯一性得证

### 更广义的换测度积分法则
若下列$\nu,\mu$都是可测空间$(X,\mathcal L)$上的$\sigma$有限符号测度，$g \in \mathcal{L}_{1}(X,\nu,E)$，则$g\cdot \frac{d\nu}{d\mu} \in \mathcal{L}_{1}(X,\mu,E)$且
$$\int_{X} g \ d\nu = \int_{X} g\cdot \frac{d\nu}{d\mu} \ d\mu + \int_{X} g \ (d\nu -\frac{d\nu}{d\mu} \ d\mu) $$
>[!Proof]
>通过[[RA06 测度的正交分解和RN导数#Lebesgue-Radon-Nikodym定理]]将$\nu$拆成绝对连续和垂直的部分，再应用换测度积分法则即可






# 在lebesgue测度下求Radon-Nikodym导数
	本节致力于求R^n上满足特定情况的符号测度相对于lebesgue测度的RN导数 

## 本H1中的符号的说明
在本H1中，给定欧几里得$R^n$空间任意一种能生成欧几里得拓扑的范数，则所有定理都可看做是在此范数下进行的。
在非$\lambda$表达式的语境下，$\lambda$代表欧几里得空间的lebesgue测度
默认用$R^n$表示带有lebesgue测度的$n$维实空间


## 最大值定理
### 局部可积函数
若定义在$R^n$的子集$X$上的向量值函数$f$满足对于任意$X$中有界集合$K$都有：
$$\int_{K} |f| \ d\lambda$$
是有限的，则这种函数被称作局部可积函数。我们将所有$X$到$E$的局部可积函数记作$f\in \mathcal L_{1,loc} (X,\lambda,\mathbb E)$





### 积分平均值
若测度空间$(X,\mathcal A,\mu)$上有符号可积函数$f$，则我们定义$f$在可测集$S$上的积分平均值为：
$$A_{S}: = \frac{1}{\mu(S)}\int_{S} f \ d\mu$$
若此测度空间为$R^n$，则我们定义如下函数：
$$A_{\bullet}f(\bullet) := \lambda(r,a). \frac{1}{\mu(B(r,a))}\int_{B(r,a)} f \ d\mu \in \mathbb E^{((0,+\infty),X)}$$
此函数被叫做*开球平均值函数*

### 局部可积函数的开球积分平均值函数是连续的
若$f$是$R^n$上某一开集$X$上的一局部可积向量值函数，则$A_{\bullet}f(\bullet)$是连续的
>[!Proof]
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
>[!Proof]
>可测性可以由分析$(a,+\infty)$的原象得到

这个函数可以理解为$f$在$a$点的任意开球上的平均值函数的上界

### 无名引理
若$\mathcal C$是一$R^n$中开球组成的集合，令$U = \bigcup_{B\in\mathcal C} B$。则对任意小于$\lambda(U)$的正实数$c$，我们都可在$\mathcal C$中选择有限个互相不相交的$B_{i}$使得
$$\sum\limits_{i} \lambda(B_{i}) > 3^{-n}c$$
>[!Proof]
>证明：由lebesgue测度的正则性，我们可以找到测度大于$c$的$U$的子集$K$。我们在构成$U$的开球中选择$K$的有限覆盖$A_{i}$。取$A_{i}$中半径最大的元素为$B_{1}$，再在$A_{i}$中取*和前面取得的任意元素都不交*的元素中半径最大的元素为$B_{i}$。则当取集合操作完毕时我们能得到半径单调递减的有限开球列$B_{i}$
>此时对于任意$A_{i}$，要么$A_{i}$就在就是某一个$B_{j}$，要么与某一个$B_{j}$相交。若$A_{i}$与某一个$B_{j}$相交，则取指标最小的与$A_{i}$相交的集合$B_{k}$。由于我们的取值总是取得的满足条件的半径最大的元素，所以$B_{k}$的半径不小于$A_{i}$。设中心点和$B_{k}$相同且半径三倍于$B_{k}$的开球为$B_{k}^{*}$由三角不等式可以证明$A_{i}\in B_{k}^{*}$。从而：
>$$\lambda(K) \leq \lambda(\bigcup_{k} B_{k}^{*}) \leq \sum\limits_{k} \lambda (B_{k}^{*}) = 3^{n} \sum\limits_{k} \lambda (B_{k})$$
>所以
>$$\lambda (B_{k}) \geq 3^{-n}\lambda(K)>3^{-n}c$$

### 最大值定理
	这定理很像闵可夫斯基不等式

存在某一正实数$C$使得对于任意$f\in \mathcal L_{1} (R^{n},\lambda,\mathbb E)$和任意正实数$\alpha$有：
$$\lambda(\{x:Hf(x)>\alpha\}) \leq \frac{C}{\alpha} \int_{R^{n}}|f| \ d\lambda$$
>[!Proof]
>设$E_{\alpha} := [Hf>\alpha]$，则对于任何$x\in E_{\alpha}$都能找到一$r_{x}$使得$A_{r_{x}}|f|(x)>\alpha$。对于任意$c<\lambda(E_{\alpha})$，我们使用[[#无名引理]]选择出$n$个不交开球$B_{j} = B(r_{j},x_{j})$使得$\sum_{j} \lambda(B_{j})>3^{-n} c$。我们得到了：
>$$c<3^{n}\sum\limits_{j}\lambda(B_{j}) \leq \frac{3^{n}}{\alpha} \sum\limits_{j} \int_{B_{j}}|f| \ d\lambda \leq \frac{3^{n}}{\alpha} \int_{R^{n}}|f| \ d\lambda$$
>由于$c$可以被设置为任何小于$\lambda(E_{\alpha})$的值，我们得到了
>$$\lambda(\{x:Hf(x)>\alpha\}) \leq \frac{3^{n}}{\alpha} \int_{R^{n}}|f| \ d\lambda$$

## lebesgue微分定理
### 通过开球上的平均值还原局部有限的$R^{n}$Borel测度的导数
若在某一$R^{n}$开集$X$上有$f\in \mathcal L_{1,loc} (X,\lambda,\mathbb E)$，则对于几乎处处的$x$有$\lim_{r\rightarrow 0} A_{r}f(x) = f(x)$
>[!Proof]
>我们可以只考虑$r$小于某实数的$R$情况，因为极限过程可以限制到任何一个滤子上。从而可以设$f$在$B(R,x)$上是向量值可积的。
>****
>若$\varepsilon>0$，我们可以找到一连续函数$g$使得$|f-g|_{\mathcal L_{1}}<\varepsilon$。
>对于这一连续函数$g$来说，对任意$x\in X$和$\varepsilon_{1}$我们可以找到一$\delta$使得$f(B(\delta,x))\subseteq B(\varepsilon,f(x))$。从而我们有：
>$$|A_{r}g(x)-g(x)|=\frac{1}{\lambda(B(\delta,x))}\left|\int_{B(\delta,x)}|g-g(x)| \ d\lambda\right|< \varepsilon_{1}$$
>从而$\lim_{r\rightarrow 0^{+}}A_{r}g(x) = g(x)$。
>****
>接下来分析：
>$$\begin{align} \varlimsup_{r\rightarrow0^{+}} |A_{r} f(x) - f(x)| &= \varlimsup_{r\rightarrow0^{+}} |A_{r}(f-g)(x) + (A_{r}g(x) - g)(x) + (g-f)(x)| \\ &\leq H(f-g)(x)+0  + |f-g|(x)\end{align} $$
>设：
>$$E_{\alpha}:= \left[ \varlimsup_{r\rightarrow0^{+}} |A_{r} f(x) - f(x)|>\alpha\right]_{x}$$$$ F_{\alpha}:= \left[|f-g|(x) >\alpha\right]_{x}$$
>$$G_{\alpha}:= \left[H(f-g)(x)>\alpha\right]_{x}$$
>我们有：
>$$E_{\alpha} \subseteq F_{\frac{\alpha}{2}} \cup G_{\frac{\alpha}{2}}$$
>但是我们对$|f-g|(x)$应用闵可夫司机不等式，对$H(f-g)(x)$应用[[#最大值定理]]，则我们得到了：
>$$\lambda(F_{\frac{\alpha}{2}})\leq \frac{2\varepsilon}{\alpha}$$
>$$\lambda(G_{\frac{a}{2}})\leq \frac{2C\varepsilon}{\alpha}$$
>从而：
>$$E_{\alpha}\leq  \frac{2\varepsilon}{\alpha} + \frac{2C\varepsilon}{\alpha}$$
>****
>由于在开始的时候$\varepsilon$的选取是任意的，在此处$\alpha$也是任意的，我们能得到
>$$\forall \alpha>0:\lambda(E_{\alpha}) = 0$$
>最终我们通过选取趋近于$0$的$\alpha$，我们得到：
>$$\lambda\left(\left[ \varlimsup_{r\rightarrow0^{+}} |A_{r} f(x) - f(x)|>0\right]_{x}\right) = 0$$
>即对于几乎处处$x\in X$
>$$\lim_{r\rightarrow0^{+}} |A_{r} f(x) - f(x)|=0\text{  且 }A_{r}f(x) = f(x)$$

这定理说明了若Borel测度$\mu$相对于$\lambda$一致连续且局部有限（即在任意有界可测集合上都可积分），则$$\frac{d\mu}{d\lambda}(x) =\lim_{r\rightarrow 0} \frac{\mu(B(r,x))}{\lambda(B(r,x))}$$
### Lebesgue集合的定义
若在某一$R^{n}$开集$X$上有$f\in \mathcal L_{1,loc} (X,\lambda,\mathbb E)$，我们定义
$$L_{f} = \left[ \lim_{r\rightarrow 0} \frac{1}{\lambda(B(r,x))}\int_{B(r,x)} |f-f(x)| \ d\lambda = 0\right ]_{x}$$

### 若$f\in \mathcal L_{1,loc} (X,\lambda,\mathbb E)$，则$f$的Lebesgue集合的补是零测的
设$X$是${\mathbb R}^n$一子集，若$f\in \mathcal L_{1,loc} (X,\lambda,\mathbb E)$，则$f$的Lebesgue集合的补是零测的
>[!Proof]
>对任意$e\in \mathbb E$和$X$中有界集合，
>$$\int_{K}|f(x)-e| \ d\lambda \leq |\kappa_{K}f|_{\mathcal L_{1}} + |e| \lambda(K)$$
>从而$f_{e} :=\lambda x. |f(x) - e|$是局部可积分的。
>
>对$f_{c}$应用[[#通过开球上的平均值还原局部有限的 R n Borel测度的导数]]即可得到：
>存在一lebesgue零测集$E_{e}$，对$\forall  x \notin E_{e}$有
>$$\lim_{r\rightarrow 0^{+}} \frac{1}{\lambda(B(r,x))} \int_{B(r,x)} |f-e| \ d\lambda = |f(x)-e| $$
>----
>由于$f$是可测的，我们得知存在lebesgue零测集$E_0$使得$f(E_{0}^{c})$可分。现考虑$f(E_{0}^{c})$的可数稠密子集$D$。定义：
>$$E : = E_{0}^{c} \cup  \bigcup_{e\in D} E_e$$
>则$E$是lebesgue零测的。我们将证明$E^c$是Lebesgue集的子集
>----
>对于$x\in E^{c}$和任意正实数$\varepsilon$，我们都可在$D$中找到一点$e$使得$|f(x) - e |< \varepsilon$，从而
>$$\forall y \in E :|f(y) -f(x)| \leq |f(y) -e| + |f(x)-e|<|f(y) -e| + \varepsilon$$
>从而有：
>$$\begin{align}\varlimsup _{r\rightarrow 0^{+}} \frac{1}{\lambda(B(r,x))} \int_{B(r,x)} |f -f(x)| \ d\lambda \leq& \varlimsup _{r\rightarrow 0^{+}} \frac{1}{\lambda(B(r,x))} \left(\int_{B(r,x)} |f -e|\ d\lambda + \int_{B(r,x)}|e-f(x)| \ d\lambda \right)\\ <& |f(x) -e| + \varepsilon \\ \leq& 2\varepsilon&& \end{align}$$
>通过取趋近于0的$\varepsilon$值即可证明
>$$\lim _{r\rightarrow 0^{+}} \frac{1}{\lambda(B(r,x))} \int_{B(r,x)} |f -f(x)| \ d\lambda = 0$$

### Shrink Nicely的定义
某一$R^{n}$开集$X$上Lebesgue可测子集列$E_{r}$若满足如下条件则被称作Shrink Nicely to $x\in X$：
* $\forall r>0:E_{r} \subseteq B(r,x)$
* 存在一正实数$\alpha$使得$\forall r>0: \lambda(E_{r})> \alpha \lambda(B(r,x))$



### 勒贝格微分定理
设$X$是${\mathbb R}^n$一子集，若$f\in \mathcal L_{1,loc} (X,\lambda,\mathbb E)$，则对于几乎处处$x$和任意$E_{r}$ Shrink Nicely to $x$ 有：
$$\lim _{r\rightarrow 0^{+}} \frac{1}{\lambda(E_{r})} \int_{E_{r}} |f -f(x)| \ d\lambda = 0$$
和
$$\lim _{r\rightarrow 0^{+}} \frac{1}{\lambda(E_{r})} \int_{E_{r}} f  \ d\lambda = f(x)$$
>[!Proof]
>简单考虑
>$$\begin{align} \frac{1}{\lambda(E_{r})} \int_{E_{r}} |f -f(x)| \ d\lambda \leq&  \frac{1}{\lambda(E_{r})} \int_{B(r,x)} |f -f(x)| \ d\lambda\\ \leq &  \frac{1}{\alpha\lambda(B(r,x))} \int_{B(r,x)} |f -f(x)| \ d\lambda  \end{align}$$
>并应用[[#若$f in mathcal L_{1,loc} (X, lambda, mathbb E)$，则$f$的Lebesgue集合的补是零测的]]即可


## 求外正则符号测度相对于Lebesgue测度的导数
#Mark 
这一节先不写





****
****
# Appendix
## Lebesgue-Radon-Nikodym定理

同一个可测空间上若有两个$\sigma$有限符号测度$\mu,\nu$，则$\nu$总能写成如下形式：
$$\nu = \lambda + \rho, \ d\rho = \frac{d\rho}{d\mu} d\mu, \ \lambda \perp \mu$$
其中$\lambda$和$\rho$都是$\sigma$有限正测度

即同一可测空间上的任意符号测度$\nu$总是能写成垂直于另一符号测度$\mu$的部分和$\mu$下积分的部分，且这种分解下$\frac{d\rho}{d\mu}$是$\mu$-a.e唯一的，$\lambda$是唯一的


### 无名引理
若可测空间$(X,\mathcal A)$上有两测度$\mu,\nu$，则要么$\mu \perp \nu$，要么存在一正数$\varepsilon$和一$\mu$下正测度集合$A$使得在$A$上$\nu\geq \varepsilon \mu$(也就是说$A$是$\nu-\varepsilon \mu$正集)
>[!Proof]
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
找到一列$\mathcal{L}_{1}(X,\nu,E)$趋近于$g$的简单函数$f_{i}$(由[[RA03 向量可积函数的积分#$ mathcal S(X, mu, mathbb E)$在$ mathcal L_{1}(X, mu, mathbb E)$中稠密|这个定理]]找到)，通过[[RA03 向量可积函数的积分#在$ mathcal L_{1}(X, mu, mathbb E)$中函数列收敛于某一函数则存在一子列在$ mathcal L_{0}(X, mu, mathbb E)$中收敛于该函数|这个定理]]找到其子列$g_i$满足同时在$\mathcal{L}_{1}(X,\nu,E)$和$\mathcal{L}_{0}(X,\nu,E)$中收敛于$g$。则$g_i$在某一个$\nu$中零测集$A$外逐点收敛至$g$。
由于$\frac{d\nu}{d\mu}$是可测的而$g_{i}$是简单函数，$g_{i}\frac{d\nu}{d\mu}$是$\mu$可测的。

**证明$g_{i}\frac{d\nu}{d\mu}$在$\mathcal{L}_{0}(X,\mu,E)$中收敛至$g\frac{d\nu}{d\mu}$**
因为$\nu(A)=0$，所以$\int_{A} \frac{d\nu}{d\mu} \ d\mu=0$。简易证明得到在$A$上$\frac{d\nu}{d\mu} =0$ $\mu$-a.e。所以在$A$上$g_{i}\frac{d\nu}{d\mu} =0$ $\mu$-a.e且$g\frac{d\nu}{d\mu} =0$ $\mu$-a.e。从而在$A$上$g_{i}\frac{d\nu}{d\mu} \rightarrow g\frac{d\nu}{d\mu}$ $\mu$-a.e。在$A^{c}$上$g_{i}\frac{d\nu}{d\mu}$逐点收敛于$g\frac{d\nu}{d\mu}$，从而证毕


**证明$g_{i}\frac{d\nu}{d\mu}$在$\mathcal{L}_{1}(X,\mu,E)$为柯西列**
容易证明对简单函数有
$$\int_{X}\varphi \ d\nu = \int_{X} \varphi\cdot \frac{d\nu}{d\mu} \ d\mu$$
从而我们得知
$$\left|g_{i}\frac{d\nu}{d\mu}-g_{j}\frac{d\nu}{d\mu}\right|_{\mathcal{L}_{1}(X,\mu,E)} =
\int_{X} \left|g_{i}-g_{j}\right|\frac{d\nu}{d\mu}\ d\mu =\int_{X} \left|g_{i}-g_{j}\right|\ d\nu = |g_{i}-g_{j}|_{\mathcal{L}_{1}(X,\mu,E)}  $$
又从$g_{i}$在$\mathcal{L}_{1}(X,\nu,E)$中收敛于$g$我们得知$g_{i}$是柯西列，我们综合得到$g_{i}\frac{d\nu}{d\mu}$在$\mathcal{L}_{1}(X,\mu,E)$为柯西列

**应用收敛的有关定理**
应用[[RA03 向量可积函数的积分#在$ mathcal L_{1}(X, mu, mathbb E)$中函数列为Cauthy列且$ mathcal L_{0}(X, mu, mathbb E)$收敛于某函数则该函数列也$ mathcal L_{1}(X, mu, mathbb E)$中收敛于该函数|这个定理]]得到在$\mathcal{L}_{1}(X,\mu,E)$中$g_{i}\frac{d\nu}{d\mu}$收敛至$g\frac{d\nu}{d\mu}$。从而：
$$\int_{X} g\cdot \frac{d\nu}{d\mu} \ d\mu =\lim_{i}\int_{X}g_{i}\frac{d\nu}{d\mu}\ d\mu = \lim_{i}\int_{X}g_{i}\ d\nu = \int_{X} g \ d\nu $$

### $\nu$和$\mu$都是符号测度的情况的证明
将$\nu$和$\mu$同时进行Hahn分解至各个符号测度的极大正负集上，分别计算其积分即可。


