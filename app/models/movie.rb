class Movie
    attr_reader :name, :character 

    @@all = []

    def initialize(name)
        @name = name
        @character = []
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
    

    def self.most_actors
        most = 0
        most_movie = nil
        Movie.all.each do |movie|
            if movie.actors.length > most
                most = movie.actors.length
                most_movie = movie
            end
        end
        most_movie
    end

end