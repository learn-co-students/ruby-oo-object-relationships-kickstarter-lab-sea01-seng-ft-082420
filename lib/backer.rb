class Backer
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #creates a ProjectBacker, associating the project with this backer
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    #returns an array of projects associated with this Backer instance
    def backed_projects
        project_backers = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        project_backers.map do |project_backer|
            project_backer.project
        end
    end

end