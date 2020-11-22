class User
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select do |pledge|
            pledge.user == self
        end
    end

    def projects
        self.pledges.select do |pledge|
            pledge.project
        end
    end

    def self.highest_pledge
        highest_pledge = 0
        pledge_user = nil
        self.all.each do |user|
            user.pledges.each do |pledge|
                if pledge.amount > highest_pledge
                    highest_pledge = pledge.amount
                    pledge_user = user
                end
            end
        end
        pledge_user
    end

    def self.multi_pledger
        self.all.select do |user|
            user.projects.length > 1
        end
    end

    def self.project_creator
        creators = []
        Project.all.each do |project|
            creators << project.creator
        end
        creators.uniq
    end


end