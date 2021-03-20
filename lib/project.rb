


class Project
    
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def my_project_backers
        ProjectBacker.all.select{ |pro| pro.project == self}
    end

    def backers
        my_project_backers.collect {|pro| pro.backer}
        # binding.pry
    end
end