class PostsController < ApplicationController
  def index
    @posts = Post.all.order(:created_at).reverse_order
    @post  = Post.new
    render :index
  end

  def create
    @posts = Post.all.order(:created_at).reverse_order
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_url, notice: 'Post was successfully created.'
    else
      render :index
    end
  end

  private

  def post_params
    # params[:post]
    # The browser MUST send params[:post]
    # And it can contain params[:post][:body]
    # If params[:post] is undefined, we will raise an error.
    # If params[:post][:blah] is defined, we will strip it out.
    # This is all to prevent users from sending us form data we don't expect.
    # params[:post][:created_at]
    # params[:post][:id]
    params.require(:post).permit(:body)
  end
end
