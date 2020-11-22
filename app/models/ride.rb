class Ride
    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        all_dist = 0.0
        self.all.each do |ride|
            all_dist += ride.distance
        end
        all_dist / self.all.length
    end

end