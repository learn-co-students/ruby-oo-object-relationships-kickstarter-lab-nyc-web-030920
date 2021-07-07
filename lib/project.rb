class Project
@@all = []
attr_accessor :title

def initialize(title)
    @title = title
    Project.all << self
end

def self.all
    @@all
end

def add_backer(backer)
    ProjectBacker.new(self, backer)
end

def project_backers
    ProjectBacker.all.select {|project_backer| project_backer.project == self}
end

def backers
    project_backers.map {|project| project.backer}
end

end