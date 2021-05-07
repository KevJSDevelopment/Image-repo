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
        @upload = Upload.new(upload_params)

        if @upload.save
            redirect_to home_path
        else
            render :new
        end
    end

    def edit
        @upload = Upload.find(params[:id])
    end

    def update
        @upload = Upload.find(params[:id])
        # byebug
        if @upload.update(upload_params)
            redirect_to home_path
        else 
            render :edit
        end
    end

    private

    def upload_params
      params.require(:upload).permit(:title, :description, :image)
    end

end
