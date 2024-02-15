include("../components/navbar.jl")

export todo

tasks = Vector{String}()

function render_tasks(tasks)
    html_elements = ""
    for (index, task) in enumerate(tasks)
        html_elements *= divv(:class => "flex justify-between items-center pl-2",
            divv(:class => "task-text", task),
            button(:hx_post => "/todo/todos/$(index)/delete", :hx_target => "#task-list", :class => "btn btn-error w-1/4", "Remove")
        )
    end
    return html_elements
end

# load any tasks
@get "/todo/todos" function ()
    return render_tasks(tasks)
end

# post new task
@post "/todo/todos" function (req::HTTP.Request)
    task_dict = HTTP.URIs.queryparams(String(req.body))
    task = get(task_dict, "task", "")
    task = HTTP.URIs.unescapeuri(task) # Decode URL-encoded characters
    push!(tasks, task)
    return render_tasks(tasks) # Render the updated task list
end

# delete task at {id}
@post "/todo/todos/{id}/delete" function (req::HTTP.Request, id::String)
    index = parse(Int, id)
    deleteat!(tasks, index)
    return render_tasks(tasks)
end

function todo()
    divv(:class => "mx-auto text-center py-10 w-1/2 text-white",
        h1(:class => "text-4xl font-bold mb-4", "To-Do List"),
        form(:hx_post => "/todo/todos", :hx_target => "#task-list", :class => "mb-4 flex justify-center",
            input(
                :type => "text",
                :name => "task",
                :id => "task-input",
                :placeholder => "Enter a task",
                :class => "border-none p-2 rounded flex-grow"
            ),
            button(
                :type => "submit",
                :class => "w-1/4 ml-2 bg-white text-black-foreground border-none hover:bg-white/90 rounded",
                "Add Task"
            )
        ),
        divv(:id => "task-list", :class => "space-y-2 min-h-40")
    )
end

# @get "/todo" function ()
#     return todo()
# end