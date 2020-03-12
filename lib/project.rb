class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
    def roof
        ProjectBacker.all.select do |ins|
            ins.project == self
        end
    end
    def backers
        roof.map do |ins|
            ins.backer
        end
    end
end