class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  
  def index
    @articles = Article.all
    @specific_articles = Article.specific_articles("er")
    @short_reading = Article.short_read
    @public_articles = Article.public_articles
    @private_articles = Article.private_articles
    @archived_articles = Article.archived_articles
    @articles_ten = Article.where(page: params[:page]).page(params[:page]).per(10)
  end
  def show
    UserMailer.welcome_email.deliver_now
    @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
  # update
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # delete
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      # strong params
      params.require(:article).permit(:title, :body, :status)
    end
end
