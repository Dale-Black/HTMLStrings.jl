module TodoApp

import Base: get
import Oxygen; Oxygen.@oxidise
import Oxygen: @get, @post, @delete
import HTTP
using HTMLStrings

include("routes/index.jl")
include("routes/todo.jl")

end # module