class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    new_post = Post.create(content: params[:content], user_id: params[:user_id])

    render json: { post: new_post}
  end
  def update
    post = Post.find(params[:id])
    if post.update(content: params[:content])
      render json: { post: post }
    else
      render json: { error: 'Could not update post' }
    end
  end
  def destroy
    post = Post.find(params[:id])
    if post.destroy
      render json: { post: post }
    else
      render json: { error: 'Could not delete post' }
    end
  end
  def index
    @posts = Post.all
  end
end
