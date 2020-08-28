class Project
    attr_reader :title
    
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    #creates a ProjectBacker, associating the backer with this project
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    #returns an array of backers associated with this Project instance
    def backers
        project_backers = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
        project_backers.map do |project_backer|
            project_backer.backer
        end
    end

end