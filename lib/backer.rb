require 'pry'

class Backer
  attr_reader :name, :backers
  attr_writer :backed_projects
  @@backed_projects = []
  @@backer = []

  def initialize(name) #takes a name on initialization
    @name = name
    @@backer << self
  end

  def back_project(project)#accepts a Project as an argument and stores it in a backed_projects array
    @back_project = project
    #accepts a Project as an argument and stores it in a backed_projects array
    @@backed_projects << project
    project.backers << self  #also adds the backer (self) to the project's backers array
  end

  def backed_projects
    @@backed_projects
  end
end
