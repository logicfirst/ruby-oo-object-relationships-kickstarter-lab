require 'pry'

class Project

    attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    matching_projects = ProjectBacker.all.select do |projects|
    projects.project == self
    end

    matching_projects.map do |project_backer_object|
      project_backer_object.backer 
    end
  end





end