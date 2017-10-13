module Api
    module V1
        class ArticlesController < ApplicationController
            #GET request - show all articles in DB
            def index
                articles = Article.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Loaded articles', data:articles}, status: :ok
            end

            #GET request - show one article based on ID
            def show
                article = Article.find(params[:id]);
                render json: {status: 'SUCCESS', message:'Loaded article', data:article}, status: :ok
            end
            
            #POST  - create new article in DB
            def create
                article =Article.new(article_params)
                if article.save
                    render json: {status: 'SUCCESS', message:'Saved article', data:article}, status: :ok
                else
                    render json: {status: 'ERROR', message:'Article not saved', data:article.errors}, status: :unprocessable_entity
                end
            end

            #DEL - delete one article from DB
            def destroy
                article = Article.find(params[:id]);
                article.destroy
                render json: {status: 'SUCCESS', message:'Article deleted', data:article}, status: :ok
            end

            #PUT - update article in DB
            def update
                article = Article.find(params[:id]);
                if article.update_attributes(article_params)
                    render json: {status: 'SUCCESS', message:'Article Updated', data:article}, status: :ok
                else
                    render json: {status: 'ERROR', message:'Article not updated', data:article.errors}, status: :unprocessable_entity
                end
            end

            #Only allow title and body to be modified/created
            private

            def article_params
                params.permit(:title, :body)
            end

        end
    end
end