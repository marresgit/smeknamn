class WelcomeController < ApplicationController

  def homepage
    @nickname = Nickname.all
    if params[:search]
      @nickname = Nickname.search(params[:search])
    else
      @nickname = Nickname.all
    end
  end


end
