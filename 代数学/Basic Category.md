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
A commutative diagram is a collection of maps $A_i\stackrel{\varphi_i}{\longrightarrow} B_i$ in which all map compositions starting from the same set and ending with the same set  give the same result.
## Some definitions: 
* Endomorphisms: $\mathsf {End}(A) = \hom_\mathrm C(A,A)$
* Small category: Obj($C$) is a set. 
# Morphisms 
## Definition: Isomorphisms
A morphism $f\in \hom_\mathrm C(A,B)$ is an **isomorphism** if and only if 
$$gf = 1_A,fg=1_B$$
the inverse of $f$ is denoted $f^{-1}$. $A$ and $B$ are **isomorphic** if morphism exists.
## Remark
* $(f^{-1})^{-1} = f$
* $(1_A)^{-1} =1_A$
* $f,g$ are isomorphisms and they can compose, then $(fg) = g^{-1}f^{-1}$
* If all morphisms in category $\mathsf C$ are isomorphisms, then $\mathsf C$ is called **groupoid**
## Definition: Endomorphisms and Automorphisms.
Endomorphisms: Morphisms from a object to itself.
Automorphisms: Isomorphisms from a object to itself.
## Definition: Monomorphisms and epimorphisms.
$f$ is a monomorphism if and only if:$$f\circ \alpha' = f\circ \alpha'' \Rightarrow \alpha' = \alpha''$$$f$ is an epimorphism if and only if $$\beta'\circ f = \beta''\circ f\Rightarrow \beta' = \beta''$$
>Notice: $f$ is a monomorphism and an epimorphism not imply $f$ is an isomorphism.
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
# Important functors 
## $\hom(A,\_)$ functor
Assume $\mathsf C$ is a category and $A\in \mathsf {Obj}(C)$. Then the assignments:$$X\rightarrow \hom_\mathrm C(A,X)$$$$\hom_\mathrm C(X,Y)\rightarrow \hom_\mathrm {Set}(\hom_\mathrm C(A,X),\hom_\mathrm C(A,Y))$$by$$\varphi \rightarrow (\bullet \rightarrow \varphi\circ \bullet)$$is a covariant functors. It is called  $\hom(A,\_)$ functor.
## $\hom(\_,A)$ functor
Assume $\mathsf C$ is a category and $A\in \mathsf {Obj}(C)$. Then the assignments:$$X\rightarrow \hom_\mathrm C(X,A)$$$$\varphi \in \hom_\mathrm C(X,Y)\rightarrow \hom_\mathrm {Set}(\hom_\mathrm C(Y,A),\hom_\mathrm C(X,A))$$by$$\varphi \rightarrow (\bullet \rightarrow \bullet\circ \varphi)$$is a covariant functors. It is called  $\hom(\_,A)$ functor.


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
# Initial object and final object
## Definition: Initial object and final object 
Let $\mathsf C$ be a category. We say that an object $I$ of $\mathsf C$ is initial in $\mathsf C$ if for every object $A$ of $\mathsf C$ there exists exactly one morphism $I$ → $A$ in $\mathsf C$.
We say that an object $F$ of $\mathsf C$ is final in $\mathsf C$ if for every object $A$ of $\mathsf C$ there exists
exactly one morphism $A$ → $F$ in $\mathsf C$
>* If $I_1, I_2$ are both initial objects in $\mathsf C$, then $I_1 \cong I_2$.
>* If $F_1, F_2$ are both final objects in $\mathsf C$, then $F_1 \cong F_2$.

# Universal property
	Universal object is an initial or a final object of some category.
## Definition: Limits 
Let $\mathscr F:\mathsf I\rightarrow \mathsf C$ be a covariant functor. The **limit** of $\mathscr F$ is an object $L$ of $\mathsf C$, endowed with morphisms $\lambda_I:L\rightarrow\mathsf F(I)$ for all objects $I \in \mathsf I$,  satisfing:
*  If $\alpha : I \rightarrow J$ is a morphism in $\ I$, then $\lambda_J = F(\alpha) \circ \lambda_I$:![[Pasted image 20230306212850.png]]
* $L$ is [[#Definition: Initial object and final object|final]] with respect to this property: that is, if $M$ is another object, endowed with morphisms $\mu_I,\forall I\in \mathsf I$, also satisfying the previous requirement, then there exists a unique morphism $M \rightarrow  L$ making all relevant diagrams commute.
The limit $L$ (if it exists) is unique up to isomorphism, as is every notion defined by a universal property. It is denoted $\lim\limits_{\longleftarrow} \mathscr F$. The ‘left-pointing’ arrow reminds us that $L$ stands ‘before’ all objects of $\mathsf C$ indexed by $I$ via $\mathscr F$. This notion is also called **inverse**, or **projective** **limit**.
## Definition: Colimits
Let $\mathscr F:\mathsf I\rightarrow \mathsf C$ be a covariant functor. The **colimit** of $\mathscr F$ is an object $L$ of $\mathsf C$, endowed with morphisms $\lambda_I:\mathsf F(I)\rightarrow L$ for all objects $I \in \mathsf I$,  satisfing:
*  If α: $I→J$ is a morphism in  I, then $\lambda_I=\lambda_J\circ\mathscr  F(\alpha)$.
* $L$ is [[#Definition: Initial object and final object|initial]] with respect to this property: that is, if $M$ is another object, endowed with morphisms $\mu_I,\forall I\in \mathsf I$, also satisfying the previous requirement, then there exists a unique morphism $L \rightarrow  M$ making all relevant diagrams commute.
The limit $L$ (if it exists) is unique up to isomorphism, as is every notion defined by a universal property. It is denoted $\lim\limits_{\longrightarrow} \mathscr F$. This notion is also called **direct**, or **injective** **limit**.
## Definition: Product.
Let $\mathsf I$ be a discrete category which object is a set and homomorphisms are just $1_I$ for all $I\in \mathsf I$, $\mathscr F: \mathsf I\rightarrow \mathsf C$ is a functor. The product 
$$\prod_{I\in \mathsf I} \mathscr F(\mathsf I):=\lim_{\longleftarrow} \mathscr F$$
## Definition: Coproduct/Direct Sum.
Let $\mathsf I$ be a discrete category which object is a set and homomorphisms are just $1_I$ for all $I\in \mathsf I$, $\mathscr F: \mathsf I\rightarrow \mathsf C$ is a functor. The coproduct
$$\coprod_{I\in \mathsf I} \mathscr F(\mathsf I):=\lim_{\longrightarrow} \mathscr F$$

## Definition: Equalizers and kernels.
 $$x\notin A$$