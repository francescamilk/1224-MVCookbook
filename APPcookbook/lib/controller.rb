require_relative "view"

class Controller
    def initialize(repo)
        @repo = repo
        @view = View.new
    end

    def list
        display()
    end

    def add
        # ask the user for name
        name = @view.ask_for("name")
        # ask the user for description
        description = @view.ask_for("description")

        # create instance of recipe
        recipe = Recipe.new(name, description)

        # store instance in repo
        @repo.add(recipe)
    end

    def remove
        # display all the recipes
        display()
        # ask user index of the one to delete
        index = @view.ask_for("index").to_i - 1
        # ask repo to delete the instance
        @repo.remove(index)
    end

    private

    def display
        # fetch the recipes (Repo)
        recipes = @repo.all
        # display the recipes (View)
        @view.display_recipes(recipes)
    end
end