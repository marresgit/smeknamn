class WelcomeController < ApplicationController

  def homepage
    @nickname = Nickname.search(params[:search])
  end


end
