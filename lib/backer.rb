class Backer 
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        new_projectbacker = ProjectBacker.new(project, self)
    end

    def backed_projects 
        projectbackers = ProjectBacker.all.select do |projectbacker|
            projectbacker.backer == self 
        end
        projectbackers.map do |myprojects|
            myprojects.project 
        end
    end
end
