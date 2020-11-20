class Backer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    proj_backer = ProjectBacker.all.select do |element|
      element.backer == self
    end
    proj = proj_backer.map do |element|
      element.project
    end
    proj
  end

end