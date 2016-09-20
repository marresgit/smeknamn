class NicknamesController < ApplicationController

  def index
    @nickname = Nickname.all
  end

  def show
    @nickname = Nickname.find(params[:id])
  end

  def new
  end

  def create
  	@nickname = Nickname.new(nickname_params)

  	@nickname.save
  	redirect_to @nickname
  end

private
  def nickname_params
    params.require(:nickname).permit(:name, :nick)
  end

end
