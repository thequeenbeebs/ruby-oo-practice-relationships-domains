class Trip
    attr_accessor :name, :listing, :guest

    @@all = []

    def initialize(name, listing, guest)
        @name = name
        @listing = listing
        @guest = guest
        self.class.all << self
    end

    def self.all
        @@all
    end

    def listing
        @listing
    end

    def guest
        @guest
    end

end

