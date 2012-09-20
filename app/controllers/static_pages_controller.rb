class StaticPagesController < ApplicationController
  def home
  end

  def about
  end  
  
  def help
  	@moshe = "This is is some text"
  end
end
