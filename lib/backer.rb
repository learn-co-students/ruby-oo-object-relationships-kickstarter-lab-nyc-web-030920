class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project,self)
    end
    def ref
        ProjectBacker.all.select do |ins|
            ins.backer == self
        end
    end
    def backed_projects
        ref.map do |ins|
            ins.project
        end
    end
end