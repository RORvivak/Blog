class PostsController < ApplicationController
  
  def new
    @post = current_user.posts.new
  end
  
  def create
    current_user.posts.create(post_params)
  end	
  
  protected  
  def post_params
    params.require(:post).permit!	
  end

end 