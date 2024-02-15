using HTMLStrings: divv, head, meta, title, link, body, nav, h1, form, input, a, p
include("components/navbar.jl")

export index
function index()
    return divv(
        head(
            meta(:charset => "UTF-8"),
            meta(:name => "viewport", :content => "width=device-width, initial-scale=1.0"),
            title("To-Do App Home"),
            link(:href => "https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css", :rel => "stylesheet"),
            link(:href => "https://cdn.jsdelivr.net/npm/daisyui/dist/full.css", :rel => "stylesheet")
        ),
        body(:class => "bg-neutral-100",
            navbar("/todo", "To-Do List"),
            divv(:class => "container mx-auto text-center py-10 w-1/2",
                h1(:class => "text-4xl font-bold mb-4", "Hello, Welcome to the To-Do App!"),
                p(:class => "text-lg", "Click the button above to start managing your tasks.")
            )
        )
    )
end

@get "/" function ()
    return index()
end