require "pry"

class Backer
    
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def my_project_backers
        ProjectBacker.all.select{ |pro| pro.backer == self}
    end

    def backed_projects
        my_project_backers.collect {|pro| pro.project}
        # binding.pry
    end
end