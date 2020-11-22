class Character
    attr_reader :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        self.class.all << self
    end

    def self.all
        @@all
    end

    def movies
        Movie.all.select do |movie|
            movie.character.include? self
        end
    end

    def shows
        Show.all.select do |show|
            show.character.include? self
        end
    end

    def self.most_appearances
        most = 0
        superhero = nil
        self.all.each do |character|
            if character.shows.length + character.movies.length > most
                most = character.shows.length + character.movies.length
                superhero = character
            end
        end
        superhero
    end




end