using PhysicalOceanography
using Documenter, Literate

# generate tutorials and how-to guides using Literate
src = joinpath(@__DIR__, "src")
lit = joinpath(@__DIR__, "../examples")
notebooks = joinpath(src, "notebooks")

execute = true # Set to true for executing notebooks and documenter!
nb = true      # Set to true to generate the notebooks
for (root, _, files) in walkdir(lit), file in files
    splitext(file)[2] == ".jl" || continue
    ipath = joinpath(root, file)
    opath = splitdir(replace(ipath, lit=>src))[1]
    println(ipath)
    println(opath)
    Literate.markdown(ipath, opath, documenter = execute)
    nb && Literate.notebook(ipath, notebooks, execute = execute)
end

# Documentation structure
ismd(f) = splitext(f)[2] == ".md"
pages(folder) = [joinpath(folder, f) for f in readdir(joinpath(src, folder)) if ismd(f)]

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
        "One Example" => "ex_f.md",
        "More Examples" => pages("Parameters"),
    ],
)

deploydocs(;
    repo="github.com/gaelforget/PhysicalOceanography.jl",
)
