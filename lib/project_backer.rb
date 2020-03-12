class ProjectBacker
    
    @@all = []
    attr_reader :project, :backer 

    def initialize(project, backer)
        @project = project
        @backer = backer 
        ProjectBacker.all  << self
    end

    def self.all
        return @@all
    end
end