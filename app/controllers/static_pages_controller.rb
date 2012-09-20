class StaticPagesController < ApplicationController
  def home
  end

  def help
  	@moshe = "This is is some text"
  end
end
