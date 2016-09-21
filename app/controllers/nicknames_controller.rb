class NicknamesController < ApplicationController

  def index
    @nickname = Nickname.all
  end

  def show
    @nickname = Nickname.find(params[:id])
  end

  def new
    @nickname = Nickname.new 
  end

  def edit
   @nickname = Nickname.find(params[:id]) 
  end

  def create
  	@nickname = Nickname.new(nickname_params)

  	if @nickname.save
  	  redirect_to @nickname
    else
      render 'new'
    end
  end

private
  def nickname_params
    params.require(:nickname).permit(:name, :nick)
  end

end
