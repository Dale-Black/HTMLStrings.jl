### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 8eff8726-63b8-11ee-04e5-f91141c9d1b5
# ╠═╡ show_logs = false
begin
	using Pkg
	Pkg.activate(".")
	using HTML: to_html, divv, p, span, h1, link, head, script, img
end

# ╔═╡ cacdad2b-afab-4e0b-9724-12021f9641ba
to_html(
	divv(
		p("To use HTML.jl in a Pluto cell, you must wrap each div in a",
			span("`to_html`"),
			"cell"
		)
	)
)

# ╔═╡ 95a6cb58-e87c-44b9-86db-c13daa82e58c
to_html(h1("`h1` tags get automatically styled by Pluto"))

# ╔═╡ b9645a69-b5b6-4fe9-a828-8bed7cd4a4cb
to_html(divv("below is a more sophisticated example, using Tailwind and DaisyUI for styling"))

# ╔═╡ dbc4fb16-fcb6-4240-96b1-26aa4d6b95c3
to_html(
    divv(
        head(
            link(:rel => "preconnect", :href => "https://fonts.googleapis.com"),
			link(:rel => "preconnect", :href => "https://fonts.gstatic.com", :crossorigin => ""),
			link(:href => "https://fonts.googleapis.com/css2?family=Alegreya+Sans:ital,wght@0,400;0,700;1,400&family=Vollkorn:ital,wght@0,400;0,700;1,400;1,700&display=swap", :rel => "stylesheet"),
			link(:href => "https://cdn.jsdelivr.net/npm/daisyui@3.7.4/dist/full.css", :rel => "stylesheet", :type => "text/css"),
            script(:src => "https://cdn.tailwindcss.com")
        ),
        divv(:data_theme => "pastel", :class => "bg-transparent dark:bg-[#1f1f1f]",
			divv(:class => "flex justify-center items-center",
				divv(:class => "card card-bordered border-primary text-center w-full dark:text-[#e6e6e6]",
					divv(:class => "card-body flex flex-col justify-center items-center",
						img(:src => "https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", :class => "h-10 w-full md:h-32 md:w-32 rounded-lg", :alt => "Glass Logo"),
						divv(:class => "text-5xl font-bold bg-gradient-to-r from-accent to-primary inline-block text-transparent bg-clip-text py-10", "HTML.jl"),
						p(:class => "card-text text-md font-serif", "HTML in pure Julia"
						)
                    )
                )
            )
        )
    )
)

# ╔═╡ Cell order:
# ╠═8eff8726-63b8-11ee-04e5-f91141c9d1b5
# ╠═cacdad2b-afab-4e0b-9724-12021f9641ba
# ╠═95a6cb58-e87c-44b9-86db-c13daa82e58c
# ╠═b9645a69-b5b6-4fe9-a828-8bed7cd4a4cb
# ╟─dbc4fb16-fcb6-4240-96b1-26aa4d6b95c3
