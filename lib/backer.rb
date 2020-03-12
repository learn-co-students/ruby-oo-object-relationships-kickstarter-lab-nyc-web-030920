class Backer
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        Backer.all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def my_projects
        ProjectBacker.all.select do |project|
            project.backer == self 
        end
    end

    def backed_projects
        self.my_projects.map do |project|
            project.project
        end
    end
end
