module PhysicalOceanography

export f, β

Ω = 7.2921 * 10^(-5) #rad/s
R = 6.3781 * 10^(6) #m

"""
    f(φ)

Coriolis Parameter
"""
f(φ) = 2Ω * sind(φ)

"""
    β(φ)

Rossby Parameter
""" 
β(φ) = 2Ω / R * cosd(φ)
 
end
