### A Pluto.jl notebook ###
# v0.19.38

using Markdown
using InteractiveUtils

# ╔═╡ 23bd6d7c-d3d5-4027-82eb-197319735d40
using HTMLStrings: to_html, divv, p, span, h1, link, head, script, img

# ╔═╡ cacdad2b-afab-4e0b-9724-12021f9641ba
to_html(
	divv(
		p("To use HTMLStrings.jl in a Pluto cell, you must wrap each div in a",
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
						divv(:class => "text-5xl font-bold bg-gradient-to-r from-accent to-primary inline-block text-transparent bg-clip-text py-10", "HTMLStrings.jl"),
						p(:class => "card-text text-md font-serif", "HTML in pure Julia"
						)
                    )
                )
            )
        )
    )
)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HTMLStrings = "c47fe496-5789-4377-b1db-55e89f2ee0c6"

[compat]
HTMLStrings = "~0.1.1"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.1"
manifest_format = "2.0"
project_hash = "3e1720d821f7df4826de09a799ad334c07ce6757"

[[deps.HTMLStrings]]
git-tree-sha1 = "38563308e600ce3440d43141b817c915b5e39e38"
uuid = "c47fe496-5789-4377-b1db-55e89f2ee0c6"
version = "0.1.1"
"""

# ╔═╡ Cell order:
# ╠═23bd6d7c-d3d5-4027-82eb-197319735d40
# ╠═cacdad2b-afab-4e0b-9724-12021f9641ba
# ╟─95a6cb58-e87c-44b9-86db-c13daa82e58c
# ╟─b9645a69-b5b6-4fe9-a828-8bed7cd4a4cb
# ╟─dbc4fb16-fcb6-4240-96b1-26aa4d6b95c3
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
