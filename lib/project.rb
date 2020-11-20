class Project

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    proj = ProjectBacker.all.select do |element|
      element.project == self
    end
    back = proj.map do |element|
      element.backer
    end
    back
  end
end