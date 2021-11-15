class ArticlesController < ApplicationController
  before_action :find_article, only: [:show,:edit,:update,:destroy]

  def index
    @articles = Article.all.order("created_at DESC")
  end

  def new
    @article=Article.new
    @publisher=Publisher.new
  end
  
  def create
    @article=Article.new(articles_params)
    
    if @article.save
      redirect_to @article, :notice => "NEW ARTICLE IS ADDED SUCCESSFULLY"  
    else
      render 'new'
    end
  end

def destroy
@article.destroy
redirect_to @article
end

def show

end
def edit

end
def update
  if @article.update(articles_params)
    redirect_to @article
  else
    render 'edit'
  end
end

private

def find_article
    @article=Article.find(params[:id])
end
  def articles_params
    @article=params.require(:article).permit(:title,:body)
  end
      
end
