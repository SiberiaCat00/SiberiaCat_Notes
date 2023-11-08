# 流形：局部欧几里得空间

## 流形和微分结构
### 流形的定义
若$M$是一T2拓扑空间，$m$是一自然数，若存在一开覆盖$U_{i}$，这开覆盖的每一开集都$\varphi_{i}$同胚于$\mathbb{R}^{m}$中一开集，则这$M$被称为$m$维流形 。这些$(U_{i},\varphi_{i})$叫做地图，所有$(U_{i},\varphi_{i})$组成的集合叫做地图集。

### 流形上的微分结构的定义

若$M$是一流形，$\mathcal M$是这流形上一地图集，若$$\forall \varphi_{i},\varphi_{j}\in\mathcal M: \varphi_{i} \circ \varphi_{j}^{-1} \in \mathcal C^{l}(U_{i} \cap U_{j})$$
则称这地图集是$C^{l}$相容的，且这地图集是$M$上一$C^{l}$微分结构
同时，两地图称$\varphi_{i},\varphi_{j}$是$C^{l}$相容的是指
$$\varphi_{i} \circ \varphi_{j}^{-1} \in \mathcal C^{l}(\varphi_{i}(U_{i} \cap U_{j}),\varphi_{j}(U_{i} \cap U_{j}))$$
$$\varphi_{j} \circ \varphi_{i}^{-1} \in \mathcal C^{l}(\varphi_{j}(U_{i} \cap U_{j}),\varphi_{i}(U_{i} \cap U_{j}))$$

>[!note]
>取$l = 0$时，容易验证流形上的$C^{0}$微分结构和流形本身的地图集等价。
### 微分结构的极大化
若$M$是一流形，$\mathcal M$是这流形上一$C^{l}$的微分结构，我们定义
$$\begin{align*}\mathcal M' := \{\varphi: U\rightarrow R^{m}|& U \text{ is open in }M \text{ and } f(U ) \text{ is open in } R^{m}  \text{ and } f \text{ is bijective and }\\& \forall \varphi_{i} \in \mathcal M : f \text{ is } C^{l}\text{ compatible with } \varphi_{i}\} \end{align*}
$$
$\mathcal M'$是一包含$\mathcal M$的$C^{l}$相容的地图集。

>[!proof]
>假设$f,g \in \mathcal M'$的定义域交是开集$U$，则对任意$x \in U$，必存在图$(U_{i},\varphi_{i})$使得$x\in U_{i}$且在$U' = U_{i} \cap U$上$f, \varphi_{i}$相容且$g,\varphi_{i}$是$C^{l}$相容的，从而我们能证明在$U'$上$f,g$是$C^{l}$相容的。容易证明在任意数量开集上相容的集合在这些开集的并上相容。从而通过选取不同的$x$能证明$f,g$在$U$上是$C^{l}$相容的

>[!note]
>若同一拓扑空间上两$C^{l}$地图集极大化之后能得到同一$C^{l}$地图集，则我们称作这两$C^{l}$地图集表示同一个微分结构，且称这两地图集等价。实际上，这种关系的确是一个等价关系，所有的$C^{l}$极大的地图集的任意覆盖子图集（能覆盖所有点的图组成的子集）都处在同一等价类。

## 流形间的函数

### 流形间的可微映射和微分同胚

若$M,N$是两流形，$f$为$M$到$N$的映射。若在$\mathcal M,\mathcal N$中任意各找一地图$(U,\varphi)$和$(V,\psi)$，都有
$$ \psi \circ f \circ \varphi^{-1} \in \mathcal C^{l}(R^{m},R^{n})$$
则称$f$是$M,N$间一$C^{l}$可微映射，记作$f \in C^{l}(M,N)$。
若$f$是双射且双向$C^{l}$可微，则称$f$是一$C^{l}$微分同胚，记作$f\in \text {Diff}^{l}(M,N)$

>[!note]
>使用和之前相似的方法可以证明，对于任意两$C^{l}$流形间函数$f$，其是否是微分同胚或连续映射，与等价图集的选择无关。我们可以认为微分同胚和连续函数是对表示同一个微分结构的所有图集定义的，也可以认为是对极大图集定义的。
>之后我们也会遇到很多与图集的选择无关的定义和定理。我们会指出，但是不会一一证明。

>[!Note]
>有时候我们会说一微分流形到$R^{n}$的可微映射，这实际上赋予$R^{n}$其标准流形结构即可。

# 函数芽，切空间和余切空间

## 流形某点的函数芽和切空间

### 函数芽代数
若$M$是一$C^{l}$流形，$m\in M$，考虑所有在$m$某邻域有定义的$C^{l}$实函数组成的集合$\mathcal F_{m}$。现假设$f\sim g$当且仅当存在$m$某一邻域内$f=g$。容易验证这的确是一个等价关系。记$\tilde{F}_{m}$为等价类构成的集合，定义这集合上的：
* 加法：$\forall f,g: [f]+[g]:= [f+g]$
* 乘法：$\forall f,g:[f][g] := [fg]$
* 数乘：$\forall c\in \mathbb{R}, g:c[g] := [cg]$

可以简单证明这些运算确实是良定义的，且这些运算确实构成一个$\mathbb{R}$代数。

### 切空间
若$M$是一$C^{l} (l\geq 1)$流形，$p\in M$，则选取任意覆盖$p$的地图$\varphi$，对于任意$v\in \mathbb{R}^{m}$，我们能定义如下函数：
$$\varphi_{*} v_{p}= \lambda [f]. \partial [f\circ \varphi^{-1}](\varphi^{-1}(p)) v_{p}$$
这函数定义域为所有$C^{l}$函数芽，值域为$\mathbb{R}$。

通过选取不同的$v$，我们可以定义许多这样的函数。这类函数组成的集合记作$T_{p}M$，称作$M$在$p$处的切空间
>[!info]
>$T_{p}M$的定义无关地图的选取

>[!proof]
>假设$\varphi$与$\psi$是覆盖$p$的两地图，$v_{p} \in \mathbb{R}^{p}$，则：
>$$\begin{align*}\\
\varphi_{*} v_{p}=& \lambda [f]. \partial [f\circ \varphi^{-1}](\varphi^{-1}(p)) v_{p} \\
=& \lambda [f]. \partial [f\circ \varphi^{-1}](\varphi^{-1}(p))\circ\partial [\varphi\circ \psi^{-1}](\psi^{-1}(p))\circ\partial [\psi\circ \varphi^{-1}](\varphi^{-1}(p))\ \  v_{p}\\
=& \lambda [f]. \partial [f\circ \psi^{-1}](\psi^{-1}(p))\circ \partial [\psi\circ \varphi^{-1}](\varphi^{-1}(p))\ \  v_{p}\\
=& \psi_{p}^{*} (\partial [\psi\circ \varphi^{-1}](\varphi^{-1}(p))v_{p})
\end{align*}
>$$
>这证明了某一地图下定义的切空间的确也能被另一地图下的某一向量定义。因此切空间无关地图的选取。

由Frechet导数的线性性质立即可得到，切空间的元素实际上是函数芽上的线性泛函。

### 切空间是一个线性空间
若$M$是一$C^{l} (l\geq 1)$流形，$p\in M$，则$T_{p}M$是$p$点$C^{l}$函数芽空间的对偶空间的线性子空间，且对于任意覆盖$p$的图$\varphi$，$\lambda v_{p}. \varphi_{*} v_{p}$是$R^{m}$到$T_{p}M$一线性同构
>[!proof]
>我们选取$\varphi$来定义切空间(之前证明了切空间的定义无关地图的选取)，则$\forall \varphi_{*}u_{p},\varphi_{*}v_{p} \in T_{p}M$，我们有$a_{1}\varphi_{*}u_{p}+ a_{2}\varphi_{*}v_{p} = \varphi_{*}(a_{1}u_{p}+ a_{2}v_{p})$，这说明了：
>* $T_{p}M$是$p$点$C^{l}$函数芽空间的对偶空间的线性子空间
>* $\lambda v_{p}. \varphi_{*} v_{p}$是$R^{m}$到$T_{p}M$一线性满射(因为切空间就是拿这映射定义的)
>
>单射的性质随便构造函数就行了，麻烦懒得写

就此，我们得知$m$维$C^{l}$流形在任意一点的切空间维度为$m$维。


### 不同图定义的切空间的关系
若$M$是一$C^{l} (l\geq 1)$流形，$p\in M$，$\varphi$与$\psi$是覆盖$p$的两地图$\varphi$与$\psi$是覆盖$p$的两地图，则：
$$\varphi_{*} v_{p} = \psi_{*} (\partial [\psi\circ \varphi^{-1}](\varphi^{-1}(p))v_{p})$$


>[!proof]
>在前面的证明里出现过，搬过来就可以了。


## 流形某一点的余切空间
### 余切空间的构造
假设$M$是一$C^{l}(l\geq1)$流形且$p \in M$，我们将$p$点的切空间$T_{p} M$的对偶空间记作$T_{p}^{*}M$。由线性代数知识可知，$T_{p}^{*}M$的维度是$m$

### 余切算子

假设$M$是一$C^{l}(l\geq1)$流形且$p \in M$，假设$[f],[g]$是点$p$邻域内的$C^{l}$可微函数芽，则这两函数芽是其对偶空间的子空间(也就是其切空间$T_{p}M$)上的对偶函数。我们把$C^{l}$函数芽映射到其代表的余切空间$T_{p}^{*}M$的元素这一映射记作$\mathrm {d} \bullet$，经验证我们有：
$$\forall v \in T_{p}M : v\  \mathrm  {d}(a_{1} [f]) + v\ \mathrm {d}a_{2}[g] = v[a_{1} f + a_{2} g] = v\ \mathrm {d}(a_{1}[f] + a_{2}[g])$$
从而我们得知这映射是一线性映射。

### 用某一地图标定余切空间
假设$M$是一$C^{l}(l\geq1)$流形且$p \in M$，$\varphi$是覆盖$p$的一个地图。若$f$是$\mathbb{R}^{m}$上一对偶函数，我们考虑$f\circ \varphi$必定是$M$的某一开集上的$C^{l}$函数，从而 $\mathrm {d} f\circ \varphi$是一余切向量。我们因此定义这一映射：
$$\varphi^{*}:= \lambda f. \mathrm {d} f \circ \varphi$$
我们有：
$$\forall v_{p}\in \mathbb{R}^{m} , f\in (\mathbb{R}^{m})^{*}:(\varphi_{*} v_{p}) (\varphi ^{*} f) = [\partial (\varphi ^{*} f) \circ \varphi^{-1}(p)] v_{p} = f v_{p}$$
由于$(\mathbb{R}^{m})^{*}$是$R^{m}$一对偶空间，我们得到$\varphi^{*}$确实是一个线性同构。

### 余切算子的性质

* 余切算子是一满射

>[!proof]
>这其实可以由上面构造的$f^{*}$验证

* 某点上的余切映射的核等于任意一地图下Frechet导数为0的函数集

>[!proof] 
>假设$M$是一$C^{l}(l\geq1)$流形且$p \in M$，$\varphi$是覆盖$p$的一个地图。
