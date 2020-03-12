class ProjectBacker
@@all = []
attr_accessor :project, :backer, :title

def initialize(project, backer)
    @project = project
    @backer = backer
    @title = title
    ProjectBacker.all << self
end

def self.all
    @@all
end

end