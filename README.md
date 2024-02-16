# HTMLStrings

[![Build Status](https://github.com/Dale-Black/HTMLStrings.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Dale-Black/HTMLStrings.jl/actions/workflows/CI.yml?query=branch%3Amain)

    
HTMLStrings.jl is a Julia package for creating HTML content using a domain-specific language that takes advantage of Julia syntax while still matching HTML in look and feel. It provides a set of functions and types that make it easy to generate HTML in a flexible and expressive manner.

## Features

- A comprehensive set of functions for generating HTML tags.
- A custom type `HTMLContent` for representing HTML content.
- Easy integration with Pluto.jl notebooks.
- Example Todo App to demonstrate the power of HTMLStrings.jl in building interactive web applications in pure Julia.
    
## Installation

```julia
using Pkg
Pkg.add("HTMLStrings")
```

## Usage

Here's a basic example of how to create and display HTML content using HTMLStrings.jl:

```julia
using HTMLStrings

content = divv(
    head(
        title("Hello, World!")
    ),
    body(
        h1(:class => "text-lg", "Welcome to HTML.jl"),
        p("Generate HTML content with ease using Julia.")
    )
)

# To display in a Pluto.jl notebook
to_html(content)
```

## Examples

In the `examples` folder, you'll find a Todo App and a Pluto notebook demonstrating how to use HTMLStrings.jl. Here's how the Todo App looks:

![Todo App GIF](https://github.com/Dale-Black/HTMLStrings.jl/blob/main/images/todo_app.gif)

And here's the Pluto notebook in action:

![Pluto Notebook GIF](https://github.com/Dale-Black/HTMLStrings.jl/blob/main/images/pluto_notebook.gif)

Explore the examples to learn more about the capabilities of HTMLStrings.jl and how you can use it to create dynamic and interactive web content with Julia.
