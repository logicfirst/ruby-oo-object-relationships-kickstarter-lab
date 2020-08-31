
class Backer
    attr_accessor :name
  
    def initialize (name)
      @name=name
  
    end 
  
    def back_project(project)
    
    ProjectBacker.new(project, self)
    end 
  
    def backed_projects
      list =ProjectBacker.all
      name = list.select do |name_backers|
        name_backers.backer == self
  
      end
   
  
      project_backers= name.map do |project_list|
          project_list.project      
      end 
      #return project 
      
  
  
    end 
  end






