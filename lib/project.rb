class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select {|project_backer| project_backer.project == self}
        backers.map {|project_backer| project_backer.backer}
    end
end