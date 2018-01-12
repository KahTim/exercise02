class ArticlesController < ApplicationController

	def index
		@owner = Owner.find_by(name: params[:owner_name])
		@articles = @owner.articles
		render json: {owner_name: @owner.name, articles: @articles}
	end

	def show
		@articles = Article.find(params[:id])
		render json: @articles
	end
	
end
