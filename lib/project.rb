class Project
  
  attr_reader :title
  
  def initialize(title)
    @title = title
  end
  
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
  
  def project_backer_instances
    ProjectBacker.all.select{|project_backer_instance| project_backer_instance.project == self}
  end
  
  def backers
    project_backer_instances.map{|project_backer_instance| project_backer_instance.backer}
  end
  
end