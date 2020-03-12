class Project
    @@all = []
    attr_reader :title

    def initialize(title)
        @title = title
        Project.all << self
    end

    def self.all
        @@all 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def my_backers
        ProjectBacker.all.select do |project|
            project.project == self
        end
    end
    
    def backers 
        self.my_backers.map do |project|
            project.backer
        end
    end
end

