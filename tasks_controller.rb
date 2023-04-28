require_relative "tasks_view"

class TasksController
    def initialize(repo)
        @repo = repo
        @view = TasksView.new
    end

    # Read
    def list
        # Display (View) some data (Repo)

        # 1. Retrieve tasks from Repo
        tasks = @repo.all       # [<Task:0x236 @name="cry" @done="false">, ...]
        # 2. Send tasks to the View
        @view.display_tasks(tasks)
    end

    # Create
    def add
        # Ask the user what's the new Task (View) 
        name = @view.ask_for_name # what the user types 

        # create it (Model)
        task = Task.new(name)

        # and store it (Repo)
        @repo.add(task)
    end

    # Update
    def mark_as_done
        list()

        # Ask which Task (View)
        index = @view.ask_for_index

        # find it in the Repo
        task = @repo.find(index)

        # and update status (Model)
        task.mark!
    end

    def remove
        # Display all the tasks, 
        list()
        
        # ask the user which one (View),
        index = @view.ask_for_index      # index the user typed
        
        # and delete it from Repo
        @repo.remove(index)
    end
end
