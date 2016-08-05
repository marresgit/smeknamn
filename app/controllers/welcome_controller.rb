class WelcomeController < ApplicationController

  def homepage
  end

  def new
  	@post = Post.new
  end

end
