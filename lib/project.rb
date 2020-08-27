class Project
  attr_reader :title
  def initialize(title)
      @title=title
  end
  def add_backer(backer)
      backer=ProjectBacker.new(self, backer)
  end
  def backers
      backerp = ProjectBacker.all.select do |backer|
         backer.project == self
      end
      parray= []
      backerp.each do |key|
          parray << key.backer
      end
      return parray
  end
end