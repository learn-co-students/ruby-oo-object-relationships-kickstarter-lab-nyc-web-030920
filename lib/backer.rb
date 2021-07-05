

class Backer
    attr_reader :name
    
    def initialize(name)
        @name = name

    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    # def backed_projects
    #     ProjectBacker.all.select do |pb|
    #             pb.project
    #     end
    # end

    def backed_projects
        projects = []
        
        ProjectBacker.all.each do |projectbacker|
            if projectbacker.backer == self
                projects << projectbacker.project
            end
        end

        projects
    end

end