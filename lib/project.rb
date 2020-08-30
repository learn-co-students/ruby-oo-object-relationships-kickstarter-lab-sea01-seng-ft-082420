class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
         ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select{|project_backer| project_backer.project == self}
        backers.map{|b| b.backer}.uniq
    end
end
