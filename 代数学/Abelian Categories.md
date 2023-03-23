# General abelian category
## Definition: Abelian category
$A$ is a abelian category if and only if: 
* $A$ is additive 
* Kernels and cokernels exist in $A$
* If $\varphi:A\rightarrow B$ is a morphism and  $\mathrm{ker}\varphi$ is 0, then $\varphi$ is the kernel of its cokernel;
* if $\psi : B \rightarrow C$ is a morphism and $\mathrm{coker} \psi$ is $0$, then $ψ$ is the cokernel of its kernel.


## Lemma: Kernel and cokernel 
In an abelian category, every kernel is the kernel of its cokernel, and every cokernel is the cokernel of its kernel 
>Proof: It is just by [[Additive Categories#Lemma: Classify of monomorphism and epimorphism by kernel and cokernel|Lemma: Classify of monomorphism and epimorphism by kernel and cokernel]] and the definition of abelian category.

## Lemma: monomorphism$\wedge$epimorphism$\Rightarrow$isomorphism 
Let $\varphi : A \rightarrow B$ be a morphism in an abelian category $A$, and assume that $\varphi$ is both a monomorphism and an epimorphism. Then $\varphi$ is an isomorphism.
>Proof:
>Assume $\varphi$ is both monomorphism and epimorphism, then $\mathrm{ker} \phi = 0_{0A}$, $\mathrm{coker} \varphi = 0_{B0}$. By definition of abelian category: $\varphi$ is kernel of $0_{B0}$ and cokernel of $0_{0A}$. Consider the morphism $id_B:B \rightarrow B$, $0_{B0} \circ id_B = 0_{B0}$, hence we have a unique morphism $\psi$ such that:$$\varphi \circ \psi = id_{B}$$![[Pasted image 20230320183405.png]]
>As the same, consider the morphism $id_A$, it lead to a unique morphism $\eta$ such that $\eta \circ \varphi = id_A$. Hence $\varphi$ is an isomorphism. 

# Fibered product in abelian category
## Construct of fibered product 






# Images

















