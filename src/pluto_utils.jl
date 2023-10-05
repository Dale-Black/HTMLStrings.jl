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

"""
```julia
Base.show(io::IO, ::MIME"text/html", content::HTMLContent)
```

Show method extension for the `HTMLContent` type. Outputs the HTML string to `io` when the MIME type is `"text/html"`.

## Example

```julia
html_content = HTMLContent("<h1>Hello, World!</h1>")
show(stdout, MIME("text/html"), html_content)  # Outputs: <h1>Hello, World!</h1>
```

"""
function Base.show(io::IO, ::MIME"text/html", content::HTMLContent)
    print(io, content.content)  # This simply outputs the HTML string to io
end

"""
```julia
to_html_content(expr)
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
html_content = to_html_content(html_expr)
```

"""
function to_html(expr)
    # Assume divv generates a string of HTML from expr (based on your DSL)
    html_string = divv(expr)  
    return HTMLContent(html_string)
end

export to_html