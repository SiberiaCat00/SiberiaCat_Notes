# Basic Category 
## Definition: Category 
A category $C$ consist of: 
* a class Obj($C$) of objects of the category 
* for every two objects $A$, $B$ of $\mathrm C$, a set $\hom_C(A, B)$ of morphisms, 
with the properties listed below:
*  For every object $A$ of $\mathrm C$, there exists (at least) one morphism $1_A ∈ \hom_C(A, A)$, the ‘identity’ on $A$.
* One can compose morphisms: That is, for every triple of objects $A$, $B$, $C$ of $\mathrm C$ there is a function (of sets):$$\hom_\mathrm C(A,B)\times \hom_\mathrm C(B,C) \rightarrow \hom_\mathrm C(A,C)$$the image of the pair $(f, g)$ is denoted $gf$.
* This ‘composition law’ is associative: if $f \in \hom_\mathrm C(A,B)$, $g \in \hom_\mathrm C(B,C)$, and $h \in \hom_\mathrm C(C,D)$, then: $$(hg)f = h(gf)$$
* The identity morphisms are identities with respect to composition: that is, for all $f \in \hom_\mathrm C(A,B)$ we have: $$f\mathbf1_A = 1_Bf = f$$
* The sets $\hom_\mathrm C(A,B)$, $\hom_\mathrm C(C,D),$ be disjoint unless $A = C, B = D$
## Definition: Commutative diagram 
A commutative diagram is a collection of maps $A_i\stackrel{\varphi_i}{\longrightarrow} B_i$ in which all map compositions starting from the same object and ending with the same object  give the same result.
## Some definitions: 
* Endomorphisms: $\mathsf {End}(A) = \hom_\mathrm C(A,A)$
* Small category: Obj($C$) is a set. 
# Morphisms 
## Definition: Isomorphisms
A morphism $f\in \hom_\mathrm C(A,B)$ is an **isomorphism** if and only if 
$$gf = 1_A,fg=1_B$$
the inverse of $f$ is denoted $f^{-1}$. $A$ and $B$ are **isomorphic** if morphism exists.
## Remark
* $(f^{-1})^{-1} = f$, and inverces are unique.
* $(1_A)^{-1} =1_A$
* $f,g$ are isomorphisms and they can compose, then $(fg) = g^{-1}f^{-1}$
* If all morphisms in category $\mathsf C$ are isomorphisms, then $\mathsf C$ is called **groupoid**
## Definition: Endomorphisms and Automorphisms.
Endomorphisms: Morphisms from a object to itself.
Automorphisms: Isomorphisms from a object to itself.
## Definition: Monomorphisms and epimorphisms.
$\varphi$ is a monomorphism if and only if:
![[Pasted image 20230319121203.png]]
$$\varphi\circ \zeta' = \varphi\circ \zeta'' \Rightarrow \zeta' = \zeta''$$
$\varphi$ is an epimorphism if and only if 
![[Pasted image 20230319121211.png]]
$$\beta'\circ \varphi = \beta''\circ \varphi\Rightarrow \beta' = \beta''$$
>Notice: $\varphi$ is a monomorphism and an epimorphism not imply $\varphi$ is an isomorphism.
# Initial object and final object
## Definition: Initial object and final object 
Let $\mathsf C$ be a category. We say that an object $I$ of $\mathsf C$ is initial in $\mathsf C$ if for every object $A$ of $\mathsf C$ there exists exactly one morphism $I$ → $A$ in $\mathsf C$.
We say that an object $F$ of $\mathsf C$ is final in $\mathsf C$ if for every object $A$ of $\mathsf C$ there exists
exactly one morphism $A$ → $F$ in $\mathsf C$
>* If $I_1, I_2$ are both initial objects in $\mathsf C$, then $I_1 \cong I_2$.
>* If $F_1, F_2$ are both final objects in $\mathsf C$, then $F_1 \cong F_2$.

## Definition: Zero object and zero morphism 
Let $\mathsf C$ be a category. We say that an object $O$ of $\mathsf C$ is a zero object in $\mathsf C$ if and only if it is both initial and final in $\mathsf C$. We say $0_{AB}\in \hom(A,B)$ is a zero morphism if and only if $0_{AB} = 0_{OB}\circ 0_{AO}$ such that $0_{OB} \text{ and } 0_{AO}$ is the morphism from $A$ to $O$ and from $O$ to $B$.
# Functors
	go from one category to another
## Definition: Covariant functors  
Let $\mathsf C$, $\mathsf D$ be two categories. A covariant functor $\mathscr F: C\rightarrow D$ is an assignment of an object $\mathscr F(A) \in \mathsf {Obj}(D)$ for every $A \in \mathsf {Obj}(C)$ and of a function
$$\hom_\mathrm C(A,B) \rightarrow \hom_\mathrm D(\mathscr F (A),\mathscr F(B))$$for every $A,B\in \mathsf{Obj} (C)$. This function is also denoted1 $\mathscr F$, and it must
preserve identities and compositions. That is:
$$\mathscr F(1_A) = 1_{\mathscr F(A)}$$$$\mathscr F(\beta \circ \alpha) = \mathscr F(\beta)\circ \mathscr F(\alpha)$$
## Definition: Contravariant functors  
Let $\mathsf C$, $\mathsf D$ be two categories. A covariant functor $\mathscr F: C\rightarrow D$ is an assignment of an object $\mathscr F(A) \in \mathsf {Obj}(D)$ for every $A \in \mathsf {Obj}(C)$ and of a function
$$\hom_\mathrm C(A,B) \rightarrow \hom_\mathrm D(\mathscr F (B),\mathscr F(A))$$for every $A,B\in \mathsf{Obj} (C)$. This function is also denoted1 $\mathscr F$, and it must
preserve identities and compositions. That is:
$$\mathscr F(1_A) = 1_{\mathscr F(A)}$$$$\mathscr F(\beta \circ \alpha) = \mathscr F(\alpha)\circ \mathscr F(\beta)$$
## Example
* Basis representation is a functor from finite dimension vector space(which have a given basis) category on $k$ and matric category on $k$.
* Center is a functor from ring category to group category.

## Composition of functors 
Assume $\mathscr F:C\rightarrow D$, $\mathscr G:D\rightarrow E$ are two functors, then $\mathscr G\circ \mathscr F$ is naturally a functor from $C$ to $E$
# Important functors 
## $\hom(A,\_)$ functor
Assume $\mathsf C$ is a category and $A\in \mathsf {Obj}(C)$. Then the assignments:$$X\rightarrow \hom_\mathrm C(A,X)$$$$\hom_\mathrm C(X,Y)\rightarrow \hom_\mathrm {Set}(\hom_\mathrm C(A,X),\hom_\mathrm C(A,Y))$$by$$\varphi \rightarrow (\bullet \rightarrow \varphi\circ \bullet)$$is a covariant functors. It is called  $\hom(A,\_)$ functor.
## $\hom(\_,A)$ functor
Assume $\mathsf C$ is a category and $A\in \mathsf {Obj}(C)$. Then the assignments:$$X\rightarrow \hom_\mathrm C(X,A)$$$$\varphi \in \hom_\mathrm C(X,Y)\rightarrow \hom_\mathrm {Set}(\hom_\mathrm C(Y,A),\hom_\mathrm C(X,A))$$by$$\varphi \rightarrow (\bullet \rightarrow \bullet\circ \varphi)$$is a contravariant functors. It is called  $\hom(\_,A)$ functor.


# Equivalence of categories 
	When are two categories 'equivalent'
## Definition: Faithful and full.
For a covariant functor $\mathscr F$, For all $A,B\in \mathsf {Obj}(\mathsf C)$:$$\mathscr F \text{ is faithful} \Leftrightarrow \text{induced function}\hom_\mathrm C(A,B) \rightarrow \hom_\mathrm D(\mathscr F(A),\mathscr F(B)) \text{ is injective}$$$$\mathscr F \text{ is full} \Leftrightarrow \text{induced function}\hom_\mathrm C(A,B) \rightarrow \hom_\mathrm D(\mathscr F(A),\mathscr F(B)) \text{ is surjective}$$
## Definition: Equivalence of categories.
A covariant functor $\mathscr F:\mathsf C\rightarrow \mathsf D$ is an equivalence of categories if and only if it is fully faithful and **essentially surjective**.
Essentially surjective:
$$\forall Y\in \mathsf D,\exists X\in \mathsf C:\mathscr F(X) \cong Y$$
## Remark:
* Assume $\mathscr F$ is fully faithful, then $A\cong B\Leftrightarrow \mathscr F(A)\cong \mathscr F(B)$.

# Universal property
	Universal object is an initial or a final object of some category.
## Definition: Limits 
Let $\mathscr F:\mathsf I\rightarrow \mathsf C$ be a covariant functor. The **limit** of $\mathscr F$ is an object $L$ of $\mathsf C$, endowed with morphisms $\lambda_I:L\rightarrow\mathsf F(I)$ for all objects $I \in \mathsf I$,  satisfing:
*  If $\alpha : I \rightarrow J$ is a morphism in $\ I$, then $\lambda_J = F(\alpha) \circ \lambda_I$:
	![[Pasted image 20230306212850.png]]
* $L$ is [[#Definition: Initial object and final object|final]] with respect to this property: that is, if $M$ is another object, endowed with morphisms $\mu_I,\forall I\in \mathsf I$, also satisfying the previous requirement, then there exists a unique morphism $M \rightarrow  L$ making all relevant diagrams commute.

The limit $L$ (if it exists) is unique up to isomorphism, as is every notion defined by a universal property. It is denoted $\lim\limits_{\longleftarrow} \mathscr F$. The ‘left-pointing’ arrow reminds us that $L$ stands ‘before’ all objects of $\mathsf C$ indexed by $I$ via $\mathscr F$. This notion is also called **inverse**, or **projective** **limit**.
## Definition: Colimits
Let $\mathscr F:\mathsf I\rightarrow \mathsf C$ be a covariant functor. The **colimit** of $\mathscr F$ is an object $L$ of $\mathsf C$, endowed with morphisms $\lambda_I:\mathsf F(I)\rightarrow L$ for all objects $I \in \mathsf I$,  satisfing:
*  If α: $I→J$ is a morphism in  I, then $\lambda_I=\lambda_J\circ\mathscr  F(\alpha)$.
* $L$ is [[#Definition: Initial object and final object|initial]] with respect to this property: that is, if $M$ is another object, endowed with morphisms $\mu_I,\forall I\in \mathsf I$, also satisfying the previous requirement, then there exists a unique morphism $L \rightarrow  M$ making all relevant diagrams commute.

The limit $L$ (if it exists) is unique up to isomorphism, as is every notion defined by a universal property. It is denoted $\lim\limits_{\longrightarrow} \mathscr F$. This notion is also called **direct**, or **injective** **limit**.
## Definition: Product and coproduct of two object
Let $\mathsf I$ be this category:
```tikz 
\usepackage{tikz-cd}
\usetikzlibrary{cd} 
\usepackage{amsmath,amsfonts}
\begin{document} 
\begin{tikzcd}     
1 & 2

\end{tikzcd} 
\end{document} 
```
$\mathscr F: \mathsf I\rightarrow \mathsf C$ is a functor. The product and coproduct:
$$\mathscr F(A)\times\mathscr F(B):=\lim_{\longleftarrow} \mathscr F$$
$$\mathscr F(A)\coprod\mathscr F(B):=\lim_{\longrightarrow} \mathscr F$$
## Definition: Product and coproduct of arbitrary object
Let $\mathsf I$ be the discrete category:
$\mathscr F: \mathsf I\rightarrow \mathsf C$ is a functor. The arbitrary product and coproduct:
$$\prod_{I\in \mathsf I}\mathscr F(I):=\lim_{\longleftarrow} \mathscr F$$
$$\coprod_{I\in \mathsf I}\mathscr F(I):=\lim_{\longrightarrow} \mathscr F$$



## Definition: Quotient 
Assume $M$ is a subcategory of $\hom (A,\_)$. The quotient $A/M$ is the initial object in $M$
```tikz 
\usepackage{tikz-cd}  
\begin{document} 
\begin{tikzcd}[scale = 100]     

A \arrow[r,"\varphi"] \arrow[d, "\pi"'] & B  \\ 
A/M \arrow[ur, "\exists ! \tilde \varphi"]


\end{tikzcd} 
\end{document} 
```

​

## Definition: Fibered product and fibered coproduct
Assume $\mathsf I$ be this category: 
```tikz 
\usepackage{tikz-cd}
\usetikzlibrary{cd} 
\usepackage{amsmath,amsfonts}
\begin{document} 
\begin{tikzcd}[row sep = 4em,column sep = 4em]

             & 2 \arrow[d] \\
 1 \arrow[r] & 3          

\end{tikzcd} 
\end{document} 
```
$\mathscr F: \mathsf I\rightarrow \mathsf C$ is a functor. The fibered product and fibered coproduct:
$$\mathscr F(1\rightarrow3)\times\mathscr F(2\rightarrow3):=\lim_{\longleftarrow} \mathscr F$$
$$\mathscr F(1\rightarrow3)\coprod\mathscr F(2\rightarrow3):=\lim_{\longrightarrow} \mathscr F$$


# Adjoint Functors 
## Definition: Adjoint functors 
Assume $C$ and $D$ are categories. and assume $\mathscr   F:C\rightarrow D$, $\mathscr G:D\rightarrow C$ are covariant functors. We say $\mathscr F$ and $\mathscr G$ are adjoint if and only if there are natural isomorphisms:$$\hom(X,\mathscr F(Y)) \stackrel{\sim}\rightarrow \hom(\mathscr F(X),Y)$$We say $\mathscr F$ is left-adjoint to $\mathscr G$ and $\mathscr G$ is left-adjoint to $\mathscr G$

## Example: Free object 
* Free group:$$\hom_\mathrm{set} (A,S(G)) \cong \hom_\mathrm{Grp} (F(A),G)$$
* Free module:$$\hom_\mathrm{set} (A,S(M)) \cong \hom_\mathrm{R-mod} (F(A),M)$$
## Lemma: Right-adjoint functors commute with limits 
If $\mathscr G: D\rightarrow C$ has a left-adjoint $\mathscr F: C\rightarrow D$ and $\mathscr  A: I\rightarrow D$ is another functor, then there is a canonical isomorphism:$$\mathscr G(\lim_{\longleftarrow} \mathscr A) \cong \lim_{\longleftarrow} (\mathscr G\circ \mathscr A)$$In other words, right-adjoint functors  are **continuous**. As the same:
**Left-adjoint functors commute with colimits**
>Proof: These two diagrams 道尽一切
>![[Pasted image 20230319021543.png]] ![[Pasted image 20230319021552.png]]





- [ ] Equalizers