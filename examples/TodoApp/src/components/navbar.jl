using HTMLStrings: divv, nav, h1, a

export navbar
function navbar(path::String, pathname::String)
    return nav(:class => "bg-gray-transparent py-4",
        divv(:class => "container mx-auto text-white flex justify-between items-center",
            h1(:class => "text-2xl font-bold", "To-Do App"),
            a(:href => "$path", :class => "bg-zinc-800 hover:bg-zinc-700 text-white font-bold py-2 px-4 rounded no-underline", "$pathname")
        )
    )
end