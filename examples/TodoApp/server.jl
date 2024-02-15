using Pkg
Pkg.activate(".")

using Revise, TodoApp, Oxygen

function ReviseHandler(handle)
    req -> begin
        Revise.revise()
        invokelatest(handle, req)
    end
end

server = TodoApp.serve(middleware=[ReviseHandler])