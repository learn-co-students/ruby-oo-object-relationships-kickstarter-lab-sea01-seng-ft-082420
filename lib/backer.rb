require 'pry'
class Backer
    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def helper
        ProjectBacker.all.select {|info| info.backer == self}
    end 

    def backed_projects
        helper.map {|info| info.project}
    end
# binding.pry 
  end