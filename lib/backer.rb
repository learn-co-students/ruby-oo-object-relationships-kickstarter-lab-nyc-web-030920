require "pry"

class Backer
    attr_accessor :projectbacker, :name
    @@all = []
    
    def initialize(name)
    @name = name
    @Projectbacker = projectbacker
    Backer.all << self
    end
    
    def self.all
        @@all
    end
    
    def back_project(project)
    ProjectBacker.new(project, self)
    end




    def backed_projects
    newArr = ProjectBacker.all.select do |projects|
         projects.backer == self
        end
        newArr.map do |projects|
            projects.project
        end
    
    end


    

    #def projects
        #projects.map do |project|
           # project
        #end
    #end
    
    #def backed_projects
       # ProjectBacker.all.select |pjb|
       # pjb 

    #end
    
    
    
    
    
    end