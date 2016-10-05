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

  def update
    @nickname = Nickname.find(params[:id])

    if @nickname.update(nickname_params)
      redirect_to @nickname
    else
      render 'edit'
    end
  end

  def destroy
    @nickname = Nickname.find(params[:id])
    @nickname.destroy

    redirect_to @nickname
  end

private
  def nickname_params
    params.require(:nickname).permit(:name, :nick, :nicknametwo, :nicknamethree, :nicknamefour, :nicknamefive)
  end

end
