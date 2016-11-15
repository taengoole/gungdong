class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
    @main_random = @posts.sample(1)
  end

  def write
  
    new_post = Post.new
    new_post.title   = params[:title]
    new_post.content = params[:content]
    new_post.explainshort = params[:explainshort]
    new_post.save

    redirect_to "/home/list"
  end

  def list
    @posts = Post.all.reverse
  end

  def update_view
    @one_post = Post.find(params[:post_id])
  end
  
  def real_update  
    @one_post = Post.find(params[:post_id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.explainshort = params[:explainshort]
    @one_post.save
    
    redirect_to "/home/list"
  end

  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy

    redirect_to "/home/list"
  end
end
