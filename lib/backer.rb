class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select{|project_backer| project_backer.backer == self}
        projects.map{|p| p.project}.uniq
    end
end