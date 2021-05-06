class UploadsController < ApplicationController

    def new
        @upload = Upload.new
    end

    def create
        if session[:user_id]
            @upload = Upload.new(title: params[:upload][:title], description: params[:upload][:description], image: params[:upload][:image] ,user_id: session[:user_id])
        end

        if @upload.save
            redirect_to upload_path(@upload.id)
        else
            render :new
        end
    end

    def show
        @upload = Upload.find(params[:id])
    end

    def index
        @uploads = Upload.where(user_id: params[:user_id])
    end

    private

    def upload_params
      params.require(:upload).permit(:title, :description, :image)
    end

end
