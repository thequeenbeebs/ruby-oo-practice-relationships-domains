class Actor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def characters
        Character.all.select do |character|
            character.actor == self
        end
    end

    def self.all
        @@all
    end

    def self.most_characters
        most_chars = 0
        meryl = nil
        self.all.each do |actor|
            if actor.characters.length > most_chars
                most_chars = actor.characters.length
                meryl = actor
            end
        end
        meryl
    end


end