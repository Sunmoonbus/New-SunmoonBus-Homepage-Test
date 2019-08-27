class FreeboardController < ApplicationController
    # CRUD
    def index
        @posts = Freeboard.all
    end

    def new
    end

    def create
    @post = Freeboard.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    redirect_to '/freeboard'
    end

    def edit
    @post = Freeboard.find(params[:post_id])
    end

    def update
    @post = Freeboard.find(params[:post_id])
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save

    redirect_to '/freeboard'
    end

    def destroy
    @post = Freeboard.find(params[:post_id])
    @post.destroy

    redirect_to '/freeboard'
    end
end