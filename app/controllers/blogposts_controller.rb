class BlogpostsController < ApplicationController

  def index
  end

  #put def new here

  def create
    @blogpost = Blogpost.new(blogpost_params)

    @article.save
    redirect_to @blogpost
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def blogpost_params
      params.require(:blogpost).permit(:author, :email, :blogtitle, :blogtext)


end
