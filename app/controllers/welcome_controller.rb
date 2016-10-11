class WelcomeController < ApplicationController

  def homepage
    if params[:search]
      @nickname = Nickname.search(params[:search])
    elsif params[:searchnick]
      @namenick = Namenick.search(params[:searchnick])    	
    else
      @nickname = Nickname.all
      @namenick = Namenick.all
    end

  end


end
