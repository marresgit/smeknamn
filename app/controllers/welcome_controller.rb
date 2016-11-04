class WelcomeController < ApplicationController
  http_basic_authenticate_with name: "adminlocal", password: "secretsofrails", :except => [:homepage]
  
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

  def admin
    @nickname = Nickname.all.order('name ASC')
    @namenick = Namenick.all.order('nickname ASC')
    @post = Post.all.order("created_at DESC")
  end

end
