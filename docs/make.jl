using PhysicalOceanography
using Documenter

makedocs(;
    modules=[PhysicalOceanography],
    authors="Gael Forget <gforget@mit.edu>",
    repo="https://github.com/gaelforget/PhysicalOceanography.jl/blob/{commit}{path}#L{line}",
    sitename="PhysicalOceanography.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://gaelforget.github.io/PhysicalOceanography.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gaelforget/PhysicalOceanography.jl",
)
