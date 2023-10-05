"""
    tag(tag_name, args...)

Generate an HTML tag with the given `tag_name` and attributes/content/nested tags specified in `args`.

## Examples

### Basic Usage
```julia
# Generate an <h1> tag with content
println(tag("h1", "Hello, World!"))  
# Output: "<h1>Hello, World!</h1>"

# Generate a <p> tag with a class attribute and content
println(tag("p", :class => "text-lg", "This is a paragraph."))  
# Output: "<p class="text-lg">This is a paragraph.</p>"
```

### Nested Tags
```julia
# Generate a <div> with nested <p> and <span> tags
println(tag("div", tag("p", "A paragraph."), tag("span", "A span.")))  
# Output: "<div><p>A paragraph.</p><span>A span.</span></div>"
```

### Special Attributes
```julia
# Generate a <var> tag with a custom attribute
println(tag("var", :data_value => "42", "x"))  
# Output: "<var data-value="42">x</var>"
```

### Mixing Attributes, Content, and Nested Tags
```julia
# Generate an <a> tag with a href attribute, class attribute, and content
println(tag("a", :href => "https://example.com", :class => "link", "Visit Example"))  
# Output: "<a href="https://example.com" class="link">Visit Example</a>"
```

## Notes
- `tag_name` should be a string representing the HTML tag name (e.g., "div", "span", "h1").
- `args` can be a mix of:
- Pairs for attributes (e.g., `:class => "text-lg"`)
- Strings for content (e.g., `"Hello, World!"`)
- Functions for nested tags (e.g., `tag("p", "A paragraph.")`)
"""
function tag(tag_name, args...)
    attributes = ""
    content = ""
    for arg in args
        if isa(arg, Pair)
            attr_name = string(arg.first)
            attr_name = occursin("_", attr_name) ? replace(attr_name, "_" => "-") : attr_name
            attributes *= " $(attr_name)=\"$(arg.second)\""
        elseif isa(arg, AbstractString)
            content *= arg
        elseif isa(arg, Function)
            content *= arg()
        end
    end
    return """<$tag_name$attributes>$content</$tag_name>"""
end

export tag

a(args...) = tag("a", args...)
abbr(args...) = tag("abbr", args...)
address(args...) = tag("address", args...)
area(args...) = tag("area", args...)
article(args...) = tag("article", args...)
aside(args...) = tag("aside", args...)
audio(args...) = tag("audio", args...)
b(args...) = tag("b", args...)
base(args...) = tag("base", args...)
bdi(args...) = tag("bdi", args...)
bdo(args...) = tag("bdo", args...)
blockquote(args...) = tag("blockquote", args...)
body(args...) = tag("body", args...)
br(args...) = tag("br", args...)
button(args...) = tag("button", args...)
canvas(args...) = tag("canvas", args...)
caption(args...) = tag("caption", args...)
cite(args...) = tag("cite", args...)
code(args...) = tag("code", args...)
col(args...) = tag("col", args...)
colgroup(args...) = tag("colgroup", args...)
data(args...) = tag("data", args...)
datalist(args...) = tag("datalist", args...)
dd(args...) = tag("dd", args...)
del(args...) = tag("del", args...)
details(args...) = tag("details", args...)
dfn(args...) = tag("dfn", args...)
dialog(args...) = tag("dialog", args...)
divv(args...) = tag("div", args...) # Named as divv to avoid conflict with Julia's built-in div
dl(args...) = tag("dl", args...)
dt(args...) = tag("dt", args...)
em(args...) = tag("em", args...)
embed(args...) = tag("embed", args...)
fieldset(args...) = tag("fieldset", args...)
figcaption(args...) = tag("figcaption", args...)
figure(args...) = tag("figure", args...)
footer(args...) = tag("footer", args...)
form(args...) = tag("form", args...)
h1(args...) = tag("h1", args...)
h2(args...) = tag("h2", args...)
h3(args...) = tag("h3", args...)
h4(args...) = tag("h4", args...)
h5(args...) = tag("h5", args...)
h6(args...) = tag("h6", args...)
head(args...) = tag("head", args...)
header(args...) = tag("header", args...)
hr(args...) = tag("hr", args...)
html(args...) = tag("html", args...)
i(args...) = tag("i", args...)
iframe(args...) = tag("iframe", args...)
img(args...) = tag("img", args...)
input(args...) = tag("input", args...)
ins(args...) = tag("ins", args...)
kbd(args...) = tag("kbd", args...)
label(args...) = tag("label", args...)
legend(args...) = tag("legend", args...)
li(args...) = tag("li", args...)
link(args...) = tag("link", args...)
main(args...) = tag("main", args...)
map(args...) = tag("map", args...)
mark(args...) = tag("mark", args...)
meta(args...) = tag("meta", args...)
meter(args...) = tag("meter", args...)
nav(args...) = tag("nav", args...)
noscript(args...) = tag("noscript", args...)
object(args...) = tag("object", args...)
ol(args...) = tag("ol", args...)
optgroup(args...) = tag("optgroup", args...)
option(args...) = tag("option", args...)
output(args...) = tag("output", args...)
p(args...) = tag("p", args...)
param(args...) = tag("param", args...)
picture(args...) = tag("picture", args...)
pre(args...) = tag("pre", args...)
progress(args...) = tag("progress", args...)
q(args...) = tag("q", args...)
rp(args...) = tag("rp", args...)
rt(args...) = tag("rt", args...)
ruby(args...) = tag("ruby", args...)
s(args...) = tag("s", args...)
samp(args...) = tag("samp", args...)
script(args...) = tag("script", args...)
section(args...) = tag("section", args...)
select(args...) = tag("select", args...)
small(args...) = tag("small", args...)
source(args...) = tag("source", args...)
span(args...) = tag("span", args...)
strong(args...) = tag("strong", args...)
style(args...) = tag("style", args...)
sub(args...) = tag("sub", args...)
summary(args...) = tag("summary", args...)
sup(args...) = tag("sup", args...)
table(args...) = tag("table", args...)
tbody(args...) = tag("tbody", args...)
td(args...) = tag("td", args...)
textarea(args...) = tag("textarea", args...)
tfoot(args...) = tag("tfoot", args...)
th(args...) = tag("th", args...)
thead(args...) = tag("thead", args...)
time(args...) = tag("time", args...)
title(args...) = tag("title", args...)
tr(args...) = tag("tr", args...)
track(args...) = tag("track", args...)
u(args...) = tag("u", args...)
ul(args...) = tag("ul", args...)
var(args...) = tag("var", args...)
video(args...) = tag("video", args...)
wbr(args...) = tag("wbr", args...)

export a, abbr, address, area, article, aside, audio, b, base, bdi, bdo, blockquote,
       body, br, button, canvas, caption, cite, code, col, colgroup, data, datalist, dd,
       del, details, dfn, dialog, divv, dl, dt, em, embed, fieldset, figcaption, figure,
       footer, form, h1, h2, h3, h4, h5, h6, head, header, hr, html, i, iframe, img,
       input, ins, kbd, label, legend, li, link, main, map, mark, meta, meter, nav,
       noscript, object, ol, optgroup, option, output, p, param, picture, pre, progress,
       q, rp, rt, ruby, s, samp, script, section, select, small, source, span, strong,
       style, sub, summary, sup, table, tbody, td, textarea, tfoot, th, thead, time, title,
       tr, track, u, ul, var, video, wbr