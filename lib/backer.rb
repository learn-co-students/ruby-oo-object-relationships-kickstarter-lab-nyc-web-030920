class Backer 
    attr_reader :name 

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def find_projectbacker 
        ProjectBacker.all.select do |pb_instance|
            pb_instance.backer == self 
        end
    end

    def backed_projects
        find_projectbacker.map do |pb_instance|
            pb_instance.project
        end
    end
end

