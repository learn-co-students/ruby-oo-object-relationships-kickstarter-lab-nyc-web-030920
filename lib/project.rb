

class Project
    attr_reader :title

    def initialize(title)
        @title = title

    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers_array = []

        ProjectBacker.all.each do |projectbacker|
            if projectbacker.project == self
                backers_array << projectbacker.backer
            end
        end

        backers_array
    end

end