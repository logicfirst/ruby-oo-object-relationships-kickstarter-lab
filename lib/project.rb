require 'pry'
class Project

    attr_reader :title
    
    def initialize (title)
      @title=title 
    
    end 
    
    def add_backer (backer)
    
      ProjectBacker.new(self,backer)
    end 

    def backers
        backers_name = ProjectBacker.all
        name = backers_name.select do |name_backers|
        
            name_backers.project == self
        #binding.pry
        end

        proj_backers = name.map do |backers_list|
            #binding.pry 
            backers_list.backer
            
        end

    end
    
end