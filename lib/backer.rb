class Backer
@@all =[]
attr_accessor :name

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

def projects
    ProjectBacker.all.select{|project| project.backer == self}
end

def backed_projects
    projects.map {|project| project.project}
end

end