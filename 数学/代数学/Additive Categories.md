# Additive Categories  
## Definition: Additive categories and additive functors
A [[Basic Category|category]] $A$ is **additive** if and only if 
* it has a **zero-object**, **finite products** and **finite coproducts**,
* each set of morphisms $Hom_A(A, B)$ is endowed with an **abelian group structure**, in such a way that the composition maps are **bilinear**. 

A functor between two additive categories is **additive** if it **preserves the abelian group structures on Hom-sets***(That means $\mathscr F(\varphi + \psi) = \mathscr F(\varphi ) + F(\psi )$).

## Definition: Equalizers , kernels and cokernels
Assume $\mathsf I$ be this category: 
```tikz 
\usepackage{tikz-cd}
\usetikzlibrary{cd} 
\usepackage{amsmath,amsfonts}
\begin{document} 


\begin{tikzcd}
1 \arrow[loop, distance=2em, in=215, out=145] \arrow[r, "j" description, bend right] \arrow[r, "i" description, bend left] & 2 \arrow[loop, distance=2em, in=35, out=325]
\end{tikzcd}

\end{document} 
```
$\mathscr F: \mathsf I\rightarrow \mathsf C$ is a functor which map $i$ to $0$ and map $j$ to $\varphi$. The kernel and cokernel:
$$\mathrm{ker} \varphi:=\lim_{\longleftarrow} \mathscr F$$
$$\mathrm{coker} \varphi:=\lim_{\longrightarrow} \mathscr F$$

# Monomorphism, epimorphism in additive category 

## Recall: Monomorphism and epimorphism
![[Basic Category#Definition: Monomorphisms and epimorphisms.]]
## Lemma: Monomorphisms and epimorphisms in additive category if and only if preserve zero morphism
A morphism $\varphi : A \rightarrow B$ in an additive category is a monomorphism if and only if for all $\zeta : Z \rightarrow  A$,
$$\varphi  \circ \zeta  = 0 \Rightarrow  \zeta = 0$$
It is an epimorphism if and only if for all $\beta : B \rightarrow  Z$,
$$\beta  \circ  \varphi = 0 \Rightarrow  \beta = 0$$
>Proof: We only proof the case monomorphisms:
>* $\Rightarrow$: $$\begin{align}
&\varphi \circ \zeta = 0\\
\Rightarrow &\varphi \circ \zeta - \varphi \circ 0 = 0\\
\Rightarrow &\varphi \circ \zeta = \varphi \circ 0\\
\Rightarrow &\zeta =0
\end{align}$$
>* $\Leftarrow$:$$ \begin{align}
&\varphi\circ \zeta' = \varphi\circ \zeta'' \\ 
\Rightarrow& \varphi\circ \zeta' - \varphi\circ \zeta'' = 0\\
\Rightarrow& \varphi\circ (\zeta' - \zeta'') = 0\\
\Rightarrow& \zeta' - \zeta'' = 0\\
\Rightarrow& \zeta' = \zeta''
\end{align}$$

## Lemma: In any additive category, kernel and cokernel are monomorphism and epimorphism 
>Proof for kernel:
>Assume $\mathrm {ker}\varphi: K\rightarrow A$ is the kernel of $\varphi: A\rightarrow B$ , Assume $\psi: Z\rightarrow K$ satisfy: $$\varphi \circ \psi = 0_{ZA}$$It is trivial that:$$\varphi \circ \mathrm 0_{ZK} = 0_{ZA}$$Then by universal property of kernel: (Unique)
>$$0_{ZK} = \psi$$

## Lemma: Classify of monomorphism and epimorphism by kernel and cokernel
Let $\varphi : A \rightarrow B$ be a morphism in an additive category. Then $\varphi$ is a monomorphism if and only if $0 \rightarrow  A$ is its **kernel**, and $\varphi$ is an epimorphism if and only if $B \rightarrow  0$ is its **cokernel**.

>We now proof the case for cokernel:
>* $\Rightarrow$: Assume $\zeta: B\rightarrow Z$ satisfy $\varphi \circ  \zeta =0$, by [[#Lemma: Monomorphisms and epimorphisms in additive category]]: $\zeta = 0$. Then there exists a unique factorization: $$B\rightarrow 0\rightarrow Z$$
>* $\Leftarrow$: Assume $\zeta: B\rightarrow Z$ satisfy $\varphi \circ  \zeta =0$, hence $\zeta$ factor unique on $B\rightarrow 0$:$$\zeta = 0_{0Z}\circ 0_{B0} = 0$$



# Product and coproduct
	By definition, product and coproduct exist in additive category. Further: They coinside

## Proposition: In an additive category, finite products and coproducts coincide.

>Proof: Assume $A\coprod B$ is the coproduct object of $A$ and $B$. We will prove it can be modifiled as a product of $A$ and $B$
>Assume $\pi_{A}$ and $\pi_B$ is the morphism for $A\coprod B \rightarrow A$ and $A\coprod B \rightarrow B$ where $\pi_{X}\circ i_Y=id_{X}$ for $X=Y$ and $\pi_{X}\circ i_Y=0_{XY}$ for $X\neq Y$.
>![[Pasted image 20230320191514.png]]
>For $\alpha: C \rightarrow A$ and $\beta: C \rightarrow B$, $i_{A} \circ \alpha + i_{B} \circ \beta$ satisfy the requist for product. This says $A\coprod B$ and $\pi_A,\pi_B$ is a product for $A$ and $B$. We can prove a coproduct is a product like above


## Remark: 
* We denote coproduct and coproduct of $A$ and $B$: $A\oplus B$.
* Notice there are nature morphism between $A,B$ and $A\oplus B$:
	![[Pasted image 20230320192354.png]]




