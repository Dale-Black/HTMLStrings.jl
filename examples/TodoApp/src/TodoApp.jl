module TodoApp

using Oxygen
@oxidise
using HTTP
using HTMLStrings

include("routes/index.jl")
include("routes/todo.jl")

end # module