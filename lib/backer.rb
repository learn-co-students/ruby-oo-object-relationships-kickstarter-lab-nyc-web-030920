class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        instances = ProjectBacker.all.select{|project_backer| project_backer.backer == self}
        instances.map do |pb_instance|
            pb_instance.project
        end
        #returns an array of projects associated with this backer
    end
end

