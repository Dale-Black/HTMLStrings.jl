module TodoApp

import Oxygen: @get, @post, @delete
Oxygen.@oxidise
import HTTP
using HTMLStrings

include("routes/index.jl")
include("routes/todo.jl")

end # module