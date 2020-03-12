class Backer

@all = []
attr_reader :name

def initialize(name)
@name = name 
end 

def back_project(project)
    ProjectBacker.new(project, self)

end

def instances
    ProjectBacker.all.select {|project| project.backer == self}
end 

def backed_projects
    instances.map {|project| project.project}
end 


end 
