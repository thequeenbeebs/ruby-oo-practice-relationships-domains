class Client
    attr_reader :name, :trainer 

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

    def self.all
        @@all
    end

end