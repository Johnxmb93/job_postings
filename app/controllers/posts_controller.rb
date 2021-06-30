class PostsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    posts = Post.all
    render json: posts
  end

  def create
    posts = Post.new(
      job_title: params[:job_title],
      description: params[:description],
      company_name: params[:company_name],
      salary: params[:salary],
      city: params[:city])
      if posts.save
        render json: posts
      else
        render json: {message: posts.errors.full_messages}, status: :bad_request
      end
  end
  
  def show
  end
 
  def update
  end
  
  def destroy
  end
end
