# Local charts and parametrizations
	Local charts:局部坐标卡
	Parametrizations:参数化
	It is used for define a differential manifold without embedding in a Euclidean space
#definition_of_local_charts Suppose $M$ is a subset of $R^n$ and $p \in M$. 
$i_M$ is the canonical injection:$$i_M:M\rightarrow R^n,x\rightarrow x$$
The map $\varphi$ is called an **m-dimensional(local) $C^q$ chart of $M$ around $p$ if:**

* $U := dom(\varphi)$ is an open neighborhood of p in $M$;
* $\varphi$ is a homeomorphism of $U$ onto the open set $V := \varphi(U)$ of $R^m$;
* $g := i_M ◦ {\varphi}^{−1}$ is a $C^q$ immersion.

Some names:
* $U$ is charted territory of $\varphi$
* $V$ is parameter range.