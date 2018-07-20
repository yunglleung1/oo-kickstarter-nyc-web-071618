class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title) #takes a title on initialization
    @title = title
    @backers = []
  end

  def add_backer(backer)#accepts a Backer as an argument and stores it in a backers array
    @backers << backer
    backer.backed_projects << self #also adds the project(self) to the backer's backed_projects array
  end

end
