# Bounded linear operator spaces
## Definition: Bounded linear operator spaces
Let $E$ and $F$ be normed vector spaces. We say $f: E\rightarrow F$ is bounded if and only if:$$\Vert f\Vert:=\sup_{\Vert x\Vert \leq1}\Vert f(x)\Vert < \infty$$We set $$\mathcal L(E,F):= \{f\in \hom(E,F)|\Vert f\Vert\ < \infty\}$$
$(\mathcal L(E,F),\Vert \cdot \Vert)$ the **bounded linear operator spaces**
## Theorem: Completeness of $\mathcal L(E,F)$
If $F$ is a banach space, then so $\mathcal L(E,F)$
>Sketch of proof: Assume $\mathbb F$ is a shrink Filter basis of $\mathcal L(E,F)$  
>1.  For $S\subseteq \mathcal L(E,F)$, we define $S(x):=\{y|\exists f \in S,y=f(x)\}$. For all $x,y \in E$, $$diam(S(x)) \leq  diam(S)\Vert x\Vert$$ So by [[Complete metric spaces#Definition: shrink Filter basis|shrink Filter basis have a limit in complete metric spaces]] , we set$$f_0(x):=\lim_{S\in\mathbb F} S(x)$$for all $x\in E$, and it is easy to prove it is linear. 
>2. define $\Vert S\Vert:=\sup_{f\in S}\Vert f \Vert$ Assume $\Vert x\Vert \leq 1$, $$\Vert S(x)\Vert \leq \Vert S \Vert$$So $\Vert f_0(x) \Vert \leq \Vert S \Vert \leq \Vert f \Vert + diam(S)$ for some $diam(S)<\infty , f \in S$. Hence $f_0$ is bounded.
>3. From 1: $$diam(S(x)) \leq  diam(S)\Vert x\Vert$$Then:$$\Vert f(x)-f_0(x)\Vert \leq \Vert f-f_0\Vert\Vert x\Vert$$