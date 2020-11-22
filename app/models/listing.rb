class Listing
    attr_accessor :name, :city

    @@all = []

    def initialize (name)
        @name = name
        self.class.all << self
    end

    def guests
        guests = []
        Trip.all.each do |trip|
            if trip.listing == self
                guests << trip.guest
            end
        end
        guests
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def trip_count
        self.trips.length
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        trips = 0
        most_trips = nil
        self.all.each do |listing|
            if listing.trip_count > trips
                most_trips = listing
            end
        end
        most_trips
    end 

end

