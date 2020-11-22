class Project
    attr_reader :name, :creator, :pledge_goal

    @@all = []

    def initialize(name, creator, pledge_goal)
        @name = name
        @creator = creator
        @pledge_goal = pledge_goal
        self.class.all << self
    end

    def pledges
        Pledge.all.select do |pledge|
            pledge.project == self
        end
    end

    def total_amount_pledged
        total = 0
        self.pledges.each do |pledge|
            total += pledge.amount 
        end
        total
    end

    def backers
        self.pledges.select do |pledge|
            pledge.user
        end
    end

    def self.all
        @@all
    end

    def self.no_pledges
        self.all.select do |project|
            project.pledges.length == 0
        end
    end

    def self.above_goal
        self.all.select do |project|
            project.total_amount_pledged >= project.pledge_goal
        end
    end

    def self.most_backers
        most = 0
        most_project = nil
        self.all.each do |project|
            if project.backers.length > most
                most = project.backers.length
                most_project = project
            end
        end
        most_project
    end

end
