class Backer
  attr_reader :name
      def initialize(name)
          @name=name
      end
      def back_project(project)
          project=ProjectBacker.new(project, self)
      end
      def backed_projects
          backerp = ProjectBacker.all.select do |backer|
             backer.backer == self
          end
          parray= []
          backerp.each do |key|
              parray << key.project
          end
          return parray
      end
  end