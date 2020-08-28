require 'pry'

class Project
    attr_accessor :backer
    attr_reader:title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def proj_back
        ProjectBacker.all.select{ |proj_backer| proj_backer.project == self }
    end

    def backers
        proj_back.map{ |proj_backer| proj_backer.backer }
    end

end