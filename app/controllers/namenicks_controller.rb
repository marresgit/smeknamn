class NamenicksController < ApplicationController

  def index
    @namenick = Namenick.all
  end

  def show
    @namenick = Namenick.find(params[:id])
  end

  def new
    @namenick = Namenick.new 
  end

  def edit
   @namenick = Namenick.find(params[:id]) 
  end

  def create
  	@namenick = Namenick.new(namenick_params)

  	if @namenick.save
  	  redirect_to @namenick
    else
      render 'new'
    end
  end

  def update
    @namenick = Namenick.find(params[:id])

    if @namenick.update(namenick_params)
      redirect_to @namenick
    else
      render 'edit'
    end
  end

  def destroy
    @namenick = Namenick.find(params[:id])
    @namenick.destroy

    redirect_to @namenick
  end

private
  def namenick_params
    params.require(:namenick).permit(:nickname, :namenick, :namenicktwo, :namenickthree, :namenickfour, :namenickfive)
  end

end
