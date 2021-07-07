class Project
attr_accessor :projectbacker, :title
@@all = []
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

def backers
    newArr = ProjectBacker.all.select do |projects|
         projects.project == self
        end
        newArr.map do |projects|
            projects.backer
        end
    
    end






end