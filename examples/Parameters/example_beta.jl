
# # Coriolis Parameter
#
#md # [![](https://mybinder.org/badge_logo.svg)](@__BINDER_ROOT_URL__/notebooks/example_beta.ipynb)
#md # [![](https://img.shields.io/badge/show-nbviewer-579ACA.svg)](@__NBVIEWER_ROOT_URL__/notebooks/example_beta.ipynb)
#
# [from wikipedia:](https://en.wikipedia.org/wiki/Rossby_parameter)
#
# The Rossby parameter `β` arises due to the variation of the Coriolis
# force `f(φ)` as a function of latitude `φ`. It is important
# in the generation of Rossby waves and given by
#
# $$ \beta(\varphi) = 2\Omega / R * cos(\varphi) $$

using PhysicalOceanography
isapprox(β(45),1.61687441686e-11)
