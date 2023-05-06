#import "../libs/equation.typ": eq
#import "../libs/typst-physics/physics.typ": *

= Maxwell's Equation

the electromagnetic field can be summarized to the following 4 equations.

#eq[
    $ div vb(D) &= rho $
    $ curl vb(E) &= - pdv(vb(B), t) $
    $ div vb(B) &= 0 $
    $ curl vb(H) &= vb(j) + pdv(vb(D), t) $
]

