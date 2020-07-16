using PhysicalOceanography
using Test, Documenter

@testset "PhysicalOceanography.jl" begin

    @test isapprox(f(45),1.03125867182e-4)
    @test isapprox(β(45),1.61687441686e-11)

end

@testset "doctests" begin
    doctest(PhysicalOceanography; manual = false)
end


