export navbar

function navbar(path::String, pathname::String)
    return nav(:class => "bg-transparent py-4",
        divv(:class => "container mx-auto text-white flex justify-between items-center",
            a(:href => "/", :hx_get => "/", :hx_target => "body", :class => "text-2xl font-bold no-underline text-white", "To-Do App"),
            a(:href => "$path", :hx_get => "$path", :hx_target => "#main", :class => "bg-zinc-800 hover:bg-zinc-700 text-white font-bold py-2 px-4 rounded no-underline", "$pathname")
        )
    )
end
