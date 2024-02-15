module TodoApp

using Oxygen
@oxidise
using HTTP
using HTMLStrings: divv, head, meta, title, link, script, body, nav, h1, form, input, button, a, p

include("index.jl")
include("todo.jl")

end # module