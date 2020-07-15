
# # Coriolis Parameter
#
# [from wikipedia:](https://en.wikipedia.org/wiki/Coriolis_frequency)
#
# The Coriolis frequency `ƒ`, also called the Coriolis parameter or Coriolis
# coefficient, is equal to twice the rotation rate `Ω` of the Earth multiplied
# by the `sine` of the latitude `φ`.
#
# $$ f=2\Omega \sin \varphi $$
#
# [![Binder](https://mybinder.org/badge_logo.svg)](@__BINDER_ROOT_URL__/path/to/notebook.inpynb)

using PhysicalOceanography
isapprox(f(45),1.03125867182e-4)
