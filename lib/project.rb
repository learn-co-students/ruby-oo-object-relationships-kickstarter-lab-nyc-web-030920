class Project

    attr_reader :title, :backer

    @@all = []

    def initialize(title, backer=nil)
        @title = title
        @backer = backer
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        all = ProjectBacker.all.select do |pb_instance|
            pb_instance.project == self
        end
        all.map do |pb_instance|
            pb_instance.backer
        end
    end

    def self.all
        @@all
    end
end