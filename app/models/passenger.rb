class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def drivers
        drivers = []
        Ride.all.each do |ride|
            if ride.passenger == self
                drivers << ride.driver
            end
        end
        drivers
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def self.all
        @@all
    end

    def total_distance
        distance = 0.0
        self.rides.each do |ride|
            distance += ride.distance
        end
        distance
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100.0
        end
    end

end