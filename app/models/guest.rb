class Guest
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def listings
        listings = []
        Trip.all.each do |trip|
            if trip.guest == self
                listings << trip.listing
            end
        end
        listings
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def trip_count
        self.trips.length
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end


end

