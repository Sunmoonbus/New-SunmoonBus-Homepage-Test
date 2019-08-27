class SuggestionsController < ApplicationController
    #CRUD
    def index
        @posts = Suggestion.all
    end

    def new
    end

    def create
        @post = Suggestion.new
        @post.title = params[:post_title]
        @post.content = params[:post_content]
        @post.save
        redirect_to '/suggestions'
    end

    def edit
        @post = Suggestion.find(params[:post_id])
    end

    def update
        @post = Suggestion.find(params[:post_id])
        @post.title = params[:post_title]
        @post.content = params[:post_content]
        @post.save
        redirect_to '/suggestions'
    end

    def destroy
        @post = Suggestion.find(params[:post_id])
        @post.destroy
        
        redirect_to '/suggestions'
    end
end
