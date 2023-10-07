# $R-\mathrm{mod}$ category 

## Category of module
The composition of two $R$-module homomorphisms is an $R$-module homomorphism and it is associative. $1_M:=M\rightarrow M : m\rightarrow m$ work as identity. Hence $R$-module form a [[Basic Category#Definition: Category|category]]: $R$-mod.

## Remark 
* The category $Z$-Mod of $Z$-modules is ‘the same as’ the category Ab
* If R = k is a field, R-modules are called **$k$-vector spaces**. The category of vector spaces over a field $k$  is called ‘$k$-Vect’. Morphisms in $k$-Vect are often called **linear maps**.

## Lemma: $R-\mathrm{mod}$ category is an abelian category
Let $\varphi+\psi := x\rightarrow \varphi(x)+\psi(x)$. It is trivial to proof the existence of zero object and zero morphism. Hence $\hom_{R-\mathrm {mod}} (M,N)$ form a abelian group, and composition is bilinear. Product and coproduct exist in $R-\mathrm{mod}$, hence $R-\mathrm{mod}$ is an additive category. 

For all morphism $\varphi \in \hom_{R-\mathrm{mod}}(M,N)$ in $R-\mathrm{mod}$ category, we can easily define the kernel **morphism**: $\mathrm{ker}\varphi := \mathrm{Ker}\varphi \rightarrow M$ be injection of sets, $\mathrm{coker}\varphi :=  N \rightarrow \mathrm{Cok}\varphi$ be the quotient. It is trivial to verify they satisfy universer properties for ker and coker, and $R-\mathrm{mod}$ is really an abelian category.


## Classification of injective and surjective morphism 
By [[Additive Categories#Lemma: Classify of monomorphism and epimorphism by kernel and cokernel]]: For a morphism $\varphi \in \hom_{R-\mathrm{mod}}$, they are equivalent:
* $\varphi$ is a injection 
* $\mathrm{Ker} \varphi = 0$ 
* $\mathrm{ker} \varphi = 0$
* $\varphi$ is a monomorphism 
For a morphism $\varphi \in \hom_{R-\mathrm{mod}}$, they are equivalent:
* $\varphi$ is a surjection 
* $\mathrm{Im} \varphi = 0$ 
* $\mathrm{im} \varphi = 0$
* $\varphi$ is a epimorphism 
