class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passengers
        self.rides.select do |ride|
            ride.passenger
        end
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        drivers = []
        self.all.each do |driver|
            driver_mileage = 0
            driver.rides.each do |ride|
                driver_mileage += ride.distance
            end
            if driver_mileage > distance
                drivers << driver
            end
        end
        drivers
    end


end