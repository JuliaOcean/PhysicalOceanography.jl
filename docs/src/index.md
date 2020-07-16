```@meta
CurrentModule = PhysicalOceanography
```

# PhysicalOceanography

```@index
```

Using `@autodocs`:

```@autodocs
Modules = [PhysicalOceanography]
```

Citing a specific docstring:

```@docs
f
```

## Doctest examples

Using the `@repl` mode (or `@example` mode):

```@repl
using PhysicalOceanography
f(10)	
```

Using a doctest, with hidden setup & output,:

```jldoctest; setup = :(using PhysicalOceanography), output = false
isapprox(f(45),1.03125867182e-4)
# output
true
```

