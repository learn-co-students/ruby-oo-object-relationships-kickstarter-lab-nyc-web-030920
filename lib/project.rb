class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def project_list
        ProjectBacker.all.select do |a|
            a.project == self 
        end
    end

    def backers
        project_list.map {|a| a.backer }
    end
end