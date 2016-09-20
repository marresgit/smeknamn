class NicknamesController < ApplicationController

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
