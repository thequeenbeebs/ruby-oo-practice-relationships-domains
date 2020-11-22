class Bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def ingredients
        all_ing = []
        self.desserts.each do |dessert|
            dessert.ingredients.each do |ingredient|
                all_ing << ingredient
            end
        end
        all_ing
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def average_calories
        all_cals = 0
        self.desserts.each do |dessert|
            all_cals += dessert.calories
        end
        all_cals / self.desserts.length
    end

    def self.all
        @@all
    end

    def shopping_list
        list = ""
        self.ingredients.each do |ingredient|
            list += ingredient.name + " "
        end
        list
    end
    
end