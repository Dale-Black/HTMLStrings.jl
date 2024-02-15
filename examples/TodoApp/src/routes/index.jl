include("../components/navbar.jl")

export index

function index()
    return divv(
        head(
            meta(:charset => "UTF-8"),
            meta(:name => "viewport", :content => "width=device-width, initial-scale=1.0"),
            title("To-Do App Home"),
            script(:src => "https://cdn.jsdelivr.net/npm/@unocss/runtime"),
            script(
                :src => "https://unpkg.com/htmx.org@1.9.10",
                :integrity => "sha384-D1Kt99CQMDuVetoL1lrYwg5t+9QdHe7NLX/SoJYkXDFfX37iInKRy5xLSi8nO7UC",
                :crossorigin => "anonymous"
            )
        ),
        body(:id => body, :class => "bg-black",
            navbar("/todo", "To-Do List"),
            divv(:id => "main", :class => "mx-auto text-center py-10 w-1/2 text-white",
                h1(:class => "text-4xl font-bold mb-4", "Hello, HMR!! woo Welcome to the To-Do App!"),
                p(:class => "text-lg", "Click the button above to start managing your tasks.")
            )
        )
    )
end

@get "/" function ()
    return index()
end