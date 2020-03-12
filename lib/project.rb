require "pry"
class Project
    attr_accessor :title
    
    def initialize (title)
    @title=title
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)

    end
    
    def back_list
        ProjectBacker.all.select do |project|
            
            project.project == self
        end
        end
    def backers
        back_list.map{|project| project.backer}
    end
    end