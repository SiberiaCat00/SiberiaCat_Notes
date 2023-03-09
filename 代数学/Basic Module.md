# R-Module
## Definition of module
* A **mudule** over $R$ is an abelian group $M$, endowed with an action of $R$. The left action of $r\in R$ on $m\in m$ is denoted $rm$, and it satisfy axioms below:
	* $(r_1 + r_2)m = r_1m + r_2m$
	* $1m = m$ and $(r_1r_2)m = r_1(r_2m)$
	* $r(m_1 + m_2) = rm_1 + rm_2$

* Assume $M$ is a abelian group. Then $\mathsf{End}_{Ab}M$  is a ring in a nature way. A left-module structure of a ring $R$ on $M$ is then simply a homomorphism of rings: $$\sigma:R\rightarrow \mathsf{End}_{Ab} M$$
* Assume $M$ is a abelian group. Then a left-module structure of a ring $R$ on $M$ is then a functuin$$\rho:R\times M\rightarrow M$$satisfying the following requirements: $(\forall r,s \in R)(\forall m,n \in M)$:
	* $\rho(r,m+n) = \rho(r,m)+\rho(r,n)$
	* $\rho(r+s,m) = \rho(r,m)+\rho(s,m)$
	* $\rho(rs,m) = \rho(r,\rho(s,m))$
	* $\rho (1,m) = m$-

>The distinction between left- and right-modules will be immaterial if $R$ is commutative. 
>They are equal. Proof is trivial. Just let $ρ(r, m) = σ(r)(m)=rm$.
## Some basic conclution.
* $(\forall m \in M)0_rm = 0_m$
	Proof: $(\forall m \in M):0_rm +0_rm = 0_rm \Rightarrow 0_rm = 0_m$ 
* $(\forall m \in M)(-1)_rm = -m$
	Proof: $(\forall m \in M):(-1)_rm +1_rm = 0_rm = 0_m \Rightarrow (-1)_rm = -m$ 
## Remark
* Every abelian group is a $\mathbb Z$-module, in exactly one way. Hence we naturely use $na$ for $n \in \mathbb Z$ and $a\in M$ to describe the action.
# $R$-mod category 
## Homomorphism of module
A homomorphism of $R$-modules is a homomorphism of (abelian) groups which is compatible with the module structure. That is, if $M$, $N$ are $R$-modules and$\varphi$ : $M$ → $N$ is a function, then $\varphi$ is a homomorphism of $R$-modules if and only if
* **Group Homomorphism for $+$**: $(\forall m_1,m_2\in M): \varphi (m_1+m_2) = \varphi(m_1) + \varphi (m_2)$
* $(\forall r\in R)(\forall m\in M): \varphi (rm) = r\varphi (m)$
## Category of module
The composition of two $R$-module homomorphisms is an $R$-module homomorphism. Hence $R$-module form a [[Basic Category#Definition: Category|category]]: $R$-mod.

## Remark 
* The category $Z$-Mod of $Z$-modules is ‘the same as’ the category Ab
* If R = k is a field, R-modules are called **$k$-vector spaces**. The category of vector spaces over a field $k$  is called ‘$k$-Vect’. Morphisms in $k$-Vect are often called **linear maps**.

# Submodules and quotients
## Definition: Submodule 
A submodule $N$ of an $R$-module $M$ is a  **+subgroup** of $M$ which satisfy: $\forall r\in R,n\in N: rn \in N$. It is easy to see that the action of $R$ on $N$ form a $R$-module.
## Examples 
* Both kernel and image of an $R$-module Homomorphism are submodule.
* $R$ itself is a $R$-module. And ideal and submodule are equal.
* Assume $S\in R$ is a subset of $R$, $M$ is a $R$-module. Then $SM:=\{rm|r\in S,m\in M\}$.
## Definition: Quotient module 
Assume $M$ is a $R$-module, $N$ is a submodule of $M$. We define a **equal relation** on $M$ by:$$m_1 \sim m_2 \Leftrightarrow m_1-m_2 \in N$$      
The projection $\pi:m\rightarrow [m]_\sim$ is a homomorphism of module.


## Free module 
## Generate Set
## Subcategory of module 





