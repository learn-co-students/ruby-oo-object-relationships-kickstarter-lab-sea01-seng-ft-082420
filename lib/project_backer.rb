class ProjectBacker
    attr_reader :project, :backer
    
    @@all = []
    def initialize(project,backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
end



=begin
Backer - ::new
  takes a name on initialization, accessible through an attribute reader (FAILED - 1)

Project - ::new
  takes a title on initialization, accessible through an attribute reader (FAILED - 2)

ProjectBacker
  @@all
    is a class variable set to an empty array (FAILED - 3)
  .all
    is a class method that returns the @@all class variable (FAILED - 4)
  ::new
    takes in a project and a backer on initialization, accessible through an attribute reader (FAILED - 5)
    stores the new instance of ProjectBacker in the @@all class variable (FAILED - 6)

Backer - #back_project
  is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer (FAILED - 7)

Project - #add_backer
  is an instance method that accepts a backer as an argument and creates a ProjectBacker, associating the backer with this project (FAILED - 8)

Backer - backed_projects
  returns an array of projects associated with this Backer instance (FAILED - 9)

Project - backers
  returns an array of backers associated with this Project instance (FAILED - 10)
=end