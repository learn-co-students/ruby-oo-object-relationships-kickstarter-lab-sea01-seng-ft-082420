class Backer

    attr_reader :name

    def initialize(name)
        @name=name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projb= ProjectBacker.all.select {|prob| prob.backer == self}
        projb.map {|projb| projb.project}
    end
    
end