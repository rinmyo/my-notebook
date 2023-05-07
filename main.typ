#import "template.typ": *
#show: project

= Maxwell's Equation

the electromagnetic field can be summarized to the following 4 equations.

#eq[
    $ div vb(D) &= rho $
    $ curl vb(E) &= - pdv(vb(B), t) $
    $ div vb(B) &= 0 $
    $ curl vb(H) &= vb(j) + pdv(vb(D), t) $
]

Now, to handle these equations. We need a lemma from vector analysis:
#lemma[
$forall vb(A): RR^3 -> RR^3$
$ curl(curl vb(A)) =  $
]
