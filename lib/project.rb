class Project 
    attr_reader :title

    def initialize(title)
        @title=title 
    end

    def self.all 
        @@all 
    end

    def add_backer(backer)
        new_projectbacker = ProjectBacker.new(self, backer)
    end

    def backers 
        projectsbacked = ProjectBacker.all.select do |projectbacker|
            projectbacker.project == self 
        end
        projectsbacked.collect do |projects|
            projects.backer
        end
    end
end