require 'pry'

class Backer
    
    attr_reader :name

    def initialize (name)
        @name = name
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projs = ProjectBacker.all.select {|items| items.backer == self}  
        projs.map {|proj| proj.project}
    end
end