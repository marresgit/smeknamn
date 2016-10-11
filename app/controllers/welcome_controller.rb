class WelcomeController < ApplicationController

  def homepage
    if params[:search]
      @nickname = Nickname.search(params[:search])
      @namenick = Namenick.search(params[:search])    	
    else
      @nickname = Nickname.all
      @namenick = Namenick.all
    end

  end


end
