require "csv"
require_relative "recipe"

class Cookbook
    def initialize(csv_file)
        @csv_file = csv_file
        @recipes  = []

        load_csv()
    end

    def all
        @recipes
    end

    def add(recipe)
        @recipes << recipe
        save_csv()
    end

    def remove(index)
        @recipes.delete_at(index)
        save_csv()
    end

    private

    def save_csv
        CSV.open(@csv_file, "wb") do |csv|
            @recipes.each do |recipe|
                # <Recipe0x89786 @name="pizza" @description="italian">
                csv << [recipe.name, recipe.description]
                # ["pizza", "description"]
            end
        end
    end

    def load_csv
        CSV.foreach(@csv_file) do |row|
            name        = row[0]
            description = row[1]

            @recipes << Recipe.new(name, description)
        end
    end
end