class PostsController < ApplicationController
  http_basic_authenticate_with name: "adminlocal", password: "secretsofrails", :except => [:new, :create]
  
  def index
    @post = Post.all.order("created_at DESC")
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @skip_navadmin = true
    @post = Post.new 
  end

  def edit
   @post = Post.find(params[:id]) 
  end

  def create
  	@post = Post.new(post_params)

  	if @post.save
      flash[:notice] = "Meddelandet har skickats"
  	  redirect_to root_path
    else
      flash[:error] = 'Error: Meddelandet kunde inte skickas'
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to @post
  end

private
  def post_params
    params.require(:post).permit(:message)
  end

end
