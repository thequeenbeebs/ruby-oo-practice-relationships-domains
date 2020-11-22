class Ingredient
    attr_reader :name, :calories
    attr_accessor :dessert

    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        self.class.all << self
    end

    def bakery
        self.dessert.bakery
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        self.all.select do |index|
            index.name.include? ingredient
        end
    end
end