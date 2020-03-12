class Project 

    attr_reader :title 

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)

    end

    def find_projects 
        ProjectBacker.all.select do |pb_instance|
            pb_instance.project == self 
        end
    end

    def backers
        find_projects.map do |pb_instance|
            pb_instance.backer 
        end
    end
    
end
