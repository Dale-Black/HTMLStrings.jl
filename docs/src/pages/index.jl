export index

function index()
    return divv(
        head(
            meta(:charset => "UTF-8"),
            meta(:name => "viewport", :content => "width=device-width, initial-scale=1.0"),
            title("HTMLStrings.jl Documentation"),
            link(:rel => "stylesheet", :href => "https://unpkg.com/@unocss/reset/tailwind.css"),
            script(:src => "https://cdn.jsdelivr.net/npm/@unocss/runtime"),
            script(
                :src => "https://unpkg.com/htmx.org@1.9.10",
                :integrity => "sha384-D1Kt99CQMDuVetoL1lrYwg5t+9QdHe7NLX/SoJYkXDFfX37iInKRy5xLSi8nO7UC",
                :crossorigin => "anonymous"
            )
        ),
        body(
            divv(:class => "container mx-auto px-4",
                header(
                    h1(:class => "text-4xl font-bold text-center my-12", "HTMLStrings.jl")
                ),
                section(
                    :class => "mb-8",
                    h2(:class => "text-2xl font-bold", "Introduction"),
                    p("HTMLStrings.jl is a Julia package designed to make it easy to create and manipulate HTML strings programmatically.")
                ),
                section(
                    :class => "mb-8",
                    h2(:class => "text-2xl font-bold", "Installation"),
                    pre(:class => "bg-gray-100 p-4",
                        code("using Pkg\nPkg.add(\"HTMLStrings\")")
                    )
                ),
                section(
                    :class => "mb-8",
                    h2(:class => "text-2xl font-bold", "Usage"),
                    p("Here's a simple example to get you started:"),
                    pre(:class => "bg-gray-100 p-4",
                        code("using HTMLStrings\n\nhtml = divv(\"Hello, world!\")\nprintln(html)")
                    )
                ),
                section(
                    :class => "mb-8",
                    h2(:class => "text-2xl font-bold", "FAQ"),
                    ul(
                        li("Q: Can I contribute to HTMLStrings.jl?", p("A: Yes, contributions are welcome! Please check the GitHub repository for more details.")),
                        li("Q: Where can I find more documentation?", p("A: The full documentation is available on the HTMLStrings.jl GitHub page."))
                    )
                ),
                footer(
                    :class => "text-center my-8",
                    p("HTMLStrings.jl")
                )
            )
        )
    )
end