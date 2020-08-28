require 'pry'
class Project

    attr_reader :title

    def initialize (title)
        @title = title
    end

    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        works = ProjectBacker.all.select {|items| items.project == self}
        works.map {|projs| projs.backer}
    end
end
