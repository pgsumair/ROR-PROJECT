class PostsController < ApplicationController
  before_action:find_post,only: [:show,:edit,:update,:destroy]
  def index
    @posts = Post.all.order("created_at DESC")
  end
  def new
    @post=Post.new
  end
  
  def create
    @post=Post.new(posts_params)
    if @post.save
      redirect_to @post, :notice => "NEW POST IS ADDED SUCCESSFULLY"  
    else
      render 'new'
    end
  end

def destroy
@post.destroy
redirect_to @post
end

def show

end
def edit

end
def update
  if @post.update(posts_params)
    redirect_to @post
  else
    render 'edit'
  end
end
  private
def find_post
    @post=Post.find(params[:id])
end
  def posts_params
    @post=params.require(:post).permit(:title,:body)
  end

end
