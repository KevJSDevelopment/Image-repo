class UploadsController < ApplicationController

    def home 
        if params[:search]
            @uploads = Upload.search(params[:search])
        else
            @uploads = Upload.all
        end
        render :home
    end

    def new
        @upload = Upload.new
    end

    def create
        @upload = Upload.new(title: params[:upload][:title], description: params[:upload][:description], image: params[:upload][:image])

        if @upload.save
            redirect_to upload_path(@upload.id)
        else
            render :new
        end
    end

    def show
        @upload = Upload.find(params[:id])
    end

    private

    def upload_params
      params.require(:upload).permit(:title, :description, :image)
    end

end
