class Project 
    attr_reader :title, :backer 
    @@all = []

    def initialize(title, backer=nil)
        @title = title 
        @backer = backer 
        @@all << self 
    end 
    def add_backer(backer) 
        ProjectBacker.new(self, backer)
    end 
    def backers 
        all = ProjectBacker.all.select do |pbi| ## pbi = project backer instance
            pbi.project == self 
        end 
        all.map do |pbi| 
            pbi.backer 
        end 
    end 
    def self.all 
        @@all 
    end 
end 
