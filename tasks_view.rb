class TasksView
    def display_tasks(tasks)
        tasks.each_with_index do |task, i|
            box = task.done? ? "[X]" : "[ ]"
            puts "#{i + 1}. #{box} #{task.capitalize}"
        end
    end

    def ask_for_name
        puts "Name of the task to add?"
        return gets.chomp # what the user types 
    end

    def ask_for_index
        puts "Which one (type index)?"
        gets.chomp.to_i - 1
    end
end
