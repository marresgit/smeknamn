class WelcomeController < ApplicationController

  def homepage
    @skip_navadmin = true
    if params[:search]
      @nickname = Nickname.search(params[:search])
      @namenick = Namenick.search(params[:search])    	
    else
      @nickname = Nickname.all
      @namenick = Namenick.all
    end

  end

http_basic_authenticate_with name: "adminlocal", password: "secretsofrails"
  def admin
    @nickname = Nickname.all
    @namenick = Namenick.all
  end

end
