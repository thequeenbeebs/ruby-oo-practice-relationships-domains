class Dessert
    attr_reader :name
    attr_accessor :bakery

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def calories
        total_cals = 0
        self.ingredients.each do |ingredient|
            total_cals += ingredient.calories
        end
        total_cals
    end

    def self.all
        @@all
    end

end