require_relative "task"

class TaskRepository
    def initialize
        @tasks = [Task.new("cry")]
    end

    def all
        # Fetch/return all the tasks
        @tasks
    end

    def add(task)
        @tasks << task
    end

    def find(index)
        @tasks.find do |task|
            # index task in @tasks need to match index
            @tasks.index(task) == index
        end
    end

    def remove(index)
        @tasks.delete_at(index)
    end
end
