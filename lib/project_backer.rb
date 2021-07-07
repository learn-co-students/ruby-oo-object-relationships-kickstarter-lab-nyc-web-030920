class ProjectBacker
    attr_accessor :project, :backer, :title
    @@all = []
    def initialize(project, backer)
        @project = project
        @backer = backer
        ProjectBacker.all << self
    end
    
    def self.all
        @@all
    end
    
    def add_backer(backer)
        self.new(backer)
    end
    

    
    
    
    
    
    end