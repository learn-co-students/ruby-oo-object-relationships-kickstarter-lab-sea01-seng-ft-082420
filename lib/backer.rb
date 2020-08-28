require 'pry'

class Backer
    attr_accessor :project
    attr_reader:name

    # @@all = []

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def project_back
        ProjectBacker.all.select{ |project| project.backer == self }
    end

    def backed_projects
        project_back.map{|project_back| project_back.project}
    end

end