class Backer
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def back_project(project)
    ProjectBacker.new(project, self)
  end
  
  def project_backer_instances
    ProjectBacker.all.select{|project_backer_instance| project_backer_instance.backer == self}
  end
  
  def backed_projects
    project_backer_instances.map{|project_backer_instance| project_backer_instance.project}
  end
  
end