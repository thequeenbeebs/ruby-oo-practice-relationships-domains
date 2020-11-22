class Location
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def trainers
        Trainer.all.select do |trainer|
            trainer.locations.include? self
        end
    end

    def total_clients
        client_count = 0
        self.trainers.each do |trainer|
            client_count += trainer.clients.length
        end
        client_count
    end

    def self.all
        @@all
    end

    def self.least_clients 
        self.all.min do |a, b|
            a.total_clients <=> b.total_clients
        end
    end
            
end