class Show
    attr_reader :name, :character, :actor

    @@all = []

    def initialize(name)
        @name = name
        @character = []
        @actor = []
        self.class.all << self
    end

    def character=(character)
        @character << character
    end

    def actors
        self.character.select do |character|
            character.actor
        end
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        Movie.all.select do |movie|
            movie.name == self.name
        end
    end

end