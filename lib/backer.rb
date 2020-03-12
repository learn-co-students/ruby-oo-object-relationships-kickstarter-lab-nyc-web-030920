class Backer 
    attr_reader :name 
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 
    def back_project(project)
        ProjectBacker.new(project, self) 
    end 
    def backed_projects 
        instances = ProjectBacker.all.select do |pb| ## pb = project backer 
            pb.backer == self 
        end 
        instances.map do |pbi|  ## pbi = project backer instance 
            pbi.project 
        end 
    end 
    def self.all 
        @@all 
    end 
end 