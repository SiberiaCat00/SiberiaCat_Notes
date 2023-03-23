# Submanifolds of $R^n$
## Definition: Submanifolds of $R^n$
A subset $M$ of $R^n$ is said to be an $m$-dimensional $C^q$ submanifold of $R^n$ if, for every $x_0 \in M$, there is in $R^n$ an open neighborhood $U$ of $x_0$, an open set $V$ in $R^n$, and a $\varphi ∈ Diff_q(U, V )$ such that $\varphi(U \cap M) = V \cap (R^m\times{0})$.
![[Pasted image 20230227204217.png]]
### Some names
	imbedded curves: 嵌入曲线
	imbedded surfaces: 嵌入曲面
	imbedded hypersurfaces: 嵌入超曲面
* One- and two-dimensional submanifolds of $R^n$ are called **(imbedded) curves** in $R^n$ and **(imbedded) surfaces** in $R^n$.
* Submanifolds of $R^n$ of dimension $n − 1$ (or codimension $1$) are called **(imbedded) hypersurfaces** (in $R^n$).
# Some cases involve manifold
## Proposition: Graph is a submanifold
Suppose $X$ is open in $R^m$ and $f \in C^q(X, R^n)$. Then $graph(f)$ is an $m$-dimensional $C^q$ submanifold of $R^{m+n}$.
>Sketch of proof: Let $$\varphi(x,y) = (x,y - f(x))$$
>then $\varphi$ is the $C^{m+n}$ is the diffeomorphism we need.
## Proposition: Inverse image of regular value is a submanifold
Suppose $X$ is open in $R^m$ and $c$ is a **regular value** of $f \in C^q(X, R^n)$. Then $f^{−1}(c)$ is an $(m − n)$-dimensional $C^q$ submanifold of $R^m$.
>Sketch of proof: Use **implicate function theorem** to get local functions and use [[Classical Differential Manifold#Proposition: Graph is a submanifold|Proposition: Graph is a submanifold]] to prove the existence of  $\varphi$ in the definition of [[#Definition: Submanifolds of $R n$|Submanifolds of Rn]]
## Definition: Immersion
Suppose $X$ is open in $R^m$. The map $f \in C^1(X, R^n)$ is called an **immersion** (of $X$ in $R^n$) if $\partial f(x) \in L(R^m, R^n)$ is injective for every $x \in X$. 
### Some names: 
	immersion: 浸入
	regular parametrization: 正则参数化
	m-dimensional (regular) parametrized hypersurface: 正则参数化m维超曲面
	parameter domain: 参数域
	parametrized hypersurface: 参数化超曲面
Then $f$ is a **regular parametrization** of $F := f(X)$. Finally, $F$ is an **$m$-dimensional (regular) parametrized hypersurface**, and X is its **parameter domain**. A 1-dimensional or 2-dimensional parametrized hypersurface is a **(regular) parametrized curve** or **(regular) parametrized surface**, respectively.
## Theorem: The immersion theorem
Suppose $X$ is open in $R^m$ and $f \in C^q(X, R^n)$ is an immersion. Then there is for every $x_0 \in X$ an open neighborhood $X_0$ in $X$ such that $f(X_0)$ is an $m$-dimensional $C^q$ submanifold of $R^n$.
>Sketch of proof: First immersion means for all $x_0$ there is a permutation named $i$ which makes the jacobian determinant$$\frac{\partial(f 1, . . . , f m)}{\partial(x^{i(1)}, . . . , x^{i(m)})} (x_0) \neq 0$$ Then identify $R^n$ into $R^m \times R^{n-m}$, let$$i:R^m \times R^{n-m}\rightarrow R^m ,(x,y)\rightarrow x$$Then $i\circ \varphi \in C^q(X,R^n)$ and $\partial (i\circ \varphi) \in \mathcal L(X,R^n)$ By **inverse function theorem**, there exist a diffeomorphism, then use [[#Proposition: Graph is a submanifold]].
### Corollary
Suppose I is an open interval and $\gamma \in C^q(I, R^n)$. Further let $t_0 \in I$ and $\partial \gamma(t_0)\neq0$. Then there is an open subinterval $I_0$ of I with $t_0 ∈ I_0$ such that the trace of $\gamma |I_0$ is an imbedded $C^q$ curve in $R^n$.
## Definition: Embedding
We say a ($C^q$) [[#Definition: Immersion|Immersion]] $f : X \rightarrow R^n$ is a ($C^q$) **embedding** of $X$ in $R^n$ if $f : X \rightarrow f(X)$ is a topological homeomorphism.
## Theorem: Embendding inplicate manifold
Suppose $X$ is open in $R^m$ and $f \in C^q(X, R^n)$ is an embedding. Then $f(X)$ is an $m$-dimensional $C^q$ submanifold of $R^n$.
>Sketch of proof: [[#Theorem: The immersion theorem|The immersion theorem]] tell us for every $x_0\in X$ there exists a open neighborhood $U$ such that $f(U)$ is a submanifold of $R^n$ and the local diffeomorphism $\varphi$ exists for some open set $V_1$ such that $f(U)\subseteq V_1$. Because $f$ is topological, $f(U)$ is open in $M: = f(X)$. By topology there exist an open set $V_2$ which satisfy $f(U) = V_2\cap M$. then $f(U)\subseteq V := V_1 \cap V_2$ and $V$ is open in $R^n$. Restric the domain of $\varphi$ from $V_1$ to $V$ gaves the diffeomorphism we need.
# Applications and examples
## Spherical coordinates
## Cylindrical coordinates

# Local charts and parametrizations
## Definition of local charts 
	Local charts:局部图
	chart:图
	charted territory: 图作用域
	atlas:图集
	parametrization:参数化
	parameter range：参数域
	local coordinates:局部坐标
	It is used for define a differential manifold without embedding in a Euclidean space
Suppose $M$ is a subset of $R^n$ and $p \in M$，$i_M$ is the canonical injection:$$i_M:M\rightarrow R^n,x\rightarrow x$$
Let $U\subseteq M, V\subseteq R^m$. The map $\varphi: U\rightarrow V$ is called an **m-dimensional(local) $C^q$ chart of $M$ around $p$ if:**

* $U$ is an open neighborhood of p in $M$
* $\varphi$ is a homeomorphism of $U$ onto the open set $V := \varphi(U)$ of $R^m$
* $R^m\rightarrow R^n$ , $g := i_M ◦ {\varphi}^{−1}$   is a $C^q$ immersion(hence embedding)


Some names:
* $U$ is **charted territory** of $\varphi$
* $V$ is **parameter range**.
* $g$ is the **parametrization** of $U$ in $\varphi$
* An $m$-dimensional $C^q$ **atlas** for $M$ is a family $\{ \varphi_\alpha ; \alpha ∈ A \}$ of $m$-dimensional $C^q$ charts of $M$ whose charted territories $U_\alpha := dom(\varphi_\alpha)$ cover the set $M$
* Finally, the $(x_1, . . . , x_m) := \varphi(p)$ are the **local coordinates** of $p \in U$ in the chart $\varphi$.
## Theorem: Every submanifold have atlas representation













