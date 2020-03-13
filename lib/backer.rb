require 'pry'
class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backer_list
        ProjectBacker.all.select do |a|
            a.backer == self 
        end
    end

    def backed_projects
        backer_list.map {|a| a.project }
    end
end