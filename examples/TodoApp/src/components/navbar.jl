using HTMLStrings: divv, nav, h1, a

export navbar
function navbar(path::String, pathname::String)
    return nav(:class => "bg-primary py-4",
        divv(:class => "container mx-auto text-white flex justify-between items-center",
            h1(:class => "text-2xl font-bold", "To-Do List"),
            a(:href => "$path", :class => "btn btn-secondary", "$pathname")
        )
    )
end