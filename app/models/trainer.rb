class Trainer
    attr_reader :name, :locations

    @@all = []

    def initialize(name)
        @name = name
        @locations = []
        self.class.all << self
    end

    def add_location(location)
        @locations << location
    end

    def clients
        Client.all.select do |client|
            client.trainer == self
        end
    end

    def self.all
        @@all
    end

    def self.most_clients
        client_count = 0
        star = nil
        self.all.each do |trainer|
            if trainer.clients.length > client_count
                client_count = trainer.clients.length
                star = trainer
            end
        end
        star
    end


end