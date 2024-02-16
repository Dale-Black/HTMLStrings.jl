"""
```julia
HTMLContent
```

A type to represent HTML content. Instances of this type hold a string of HTML.

# Fields
- `content::String` : The HTML content as a string.

## Example

```julia
html_content = HTMLContent("<h1>Hello, World!</h1>")
```

"""
struct HTMLContent
    content::String
end

function Base.show(io::IO, ::MIME"text/html", content::HTMLContent)
    print(io, content.content)  # This simply outputs the HTML string to io
end

"""
```julia
to_html(expr)
```

Create `HTMLContent` from a DSL expression. Assumes `divv` generates a string of HTML from `expr` based on your DSL.

## Arguments
- `expr`: The DSL expression to be converted to HTML.

## Returns
- An instance of `HTMLContent` containing the generated HTML string.

## Example

```julia
html_expr = divv(
    head(
        title("Hello, World!")
    ),
    body(
        h1("Hello, World!")
    )
)
html_content = to_html(html_expr)
```

"""
function to_html(expr)
    # Assume divv generates a string of HTML from expr (based on your DSL)
    html_string = divv(expr)  
    return HTMLContent(html_string)
end

export to_html