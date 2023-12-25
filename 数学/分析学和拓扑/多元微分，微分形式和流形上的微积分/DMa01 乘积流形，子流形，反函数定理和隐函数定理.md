
# 乘积流形





# 子流形

## 子流形卡和子流形


### 子流形卡和子流形
假设$M$是一$C^{l}$流形，若存在一覆盖集合$N$的相容地图集$(U_{i},\varphi_{i})$满足如下情况：
* $\varphi_{i}(U_{i}\cap N) = \varphi_{i}(U) \cap \varphi(N)$

则$N$称作$M$一子流形，$m-n$称作$N$的codimension，$\psi_{i} := \varphi_{i}|_{U_{i}\cap N}$为这$N$上的一覆盖地图集(即微分结构)。


### 子流形的子流形是子流形
假设$M$是一$C^{l}$流形。$N$是$M$子流形，$L$是$N$子流形，则$L$是$M$子流形，$L$的微分结构由证明中的相关内容给定。
【·
>[!proof]
>假设$p$是$L$上一点，$\varphi_{0}$和$\psi_{0}$分别是$N$相对于$M$和$L$相对于$N$的两地图，且这两地图都包含$L$上点$P$。我们将这些地图限制在
>$$U_{0}:= \text{Dom}\varphi \cap \varphi^{-1}(\varphi(\text{Dom}\psi)\times \mathbb{R}^{m-n}) $$
>现设$\varphi_{0}' := \varphi_{0}|_{N}$，$\psi_{0}' := \psi_{0}|_{L}$。则$\varphi_{0}'$和$\psi_{0}'$分别是$N$和$L$一相容地图。
>
>现在我们有了$N$上两相容地图$\varphi_{0}'$和$\psi_{0}$。所以$\psi_{0} \circ \varphi_{0}^{-1}$是一$C^{l}$微分同胚，从而$$(\psi_{0} \circ \varphi_{0}^{-1}) \times \text{id}_{\mathbb{R}^{m-n}} := \lambda(x,y) \in \mathbb{R}^{n}\times \mathbb{R} ^{m-n}. (\psi_{0} \circ \varphi_{0}^{-1},y)$$
>也是$\mathbb{R}^{m}$上两开集上的微分同胚。
>
>我们现在设
>$$\varphi_{0}*\psi_{0}:=((\psi_{0} \circ \varphi_{0}^{-1}) \times \text{id}_{\mathbb{R}^{m-n}}) \circ\varphi$$
>这就是我们想要找到的$L$相对于$M$的子流形卡。由于这地图是由一$C^{l}$相容地图和一$C^{L}$映射构成，我们得知这地图是与$M$上微分结构相容的。
>![[files/Screenshot_20231116_232857_com.orion.notein.png]]



$$\mathbb N$$