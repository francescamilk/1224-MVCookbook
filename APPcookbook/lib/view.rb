class View
    def display_recipes(recipes)
        recipes.each_with_index do |recipe, i|
            puts "#{i + 1}. #{recipe.name}"
        end
    end

    # def ask_for_name
    #     puts "What's the name?"
    #     gets.chomp
    # end

    # def ask_for_description
    #     puts "What's the description?"
    #     gets.chomp
    # end

    def ask_for(thing)
        puts "What's the #{thing}?"
        gets.chomp
    end
end
