using HTMLStrings

function index()
    return divv(
        head(
            title("Static Example")
        ),
        body(
            h1("Static Example"),
            p("This is a static example.")
        )
    )
end

index_html = touch(joinpath(mkpath(joinpath(@__DIR__, "build")), "index.html"))

open(index_html, "w") do io
    write(io, index())
end