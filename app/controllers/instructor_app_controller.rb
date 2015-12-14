class InstructorAppController < ApplicationController

  def new
    @application = InstructorApp.new
  end
  
  def index
  end

  def update
     
     print("\n\nHELLO\n\n")
     redirect_to "http://www.google.com"
  end

end
