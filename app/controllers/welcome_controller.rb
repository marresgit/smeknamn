class WelcomeController < ApplicationController

  def homepage
    if params[:search]
      @nickname = Nickname.search(params[:search])
    else
      @nickname = Nickname.all
    end
  end


end
