using Pkg
Pkg.activate(".")
Pkg.instantiate()

using HTMLStringsDocs

index_html = touch(joinpath(mkpath(joinpath(@__DIR__, "build")), "index.html"))

open(index_html, "w") do io
    write(io, index())
end