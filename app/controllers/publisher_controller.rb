class PublisherController < ApplicationController
    def new
        @publisher=@holder.publishers.new
    end
      
    def create
        @publisher=@holder.publishers.new publisher_params
        @holder.save
        redirect_to @holder, notice: "Data Saved Successfully"
    end

    private

    def publisher_params
        params.require(:publisher).permit(:content)
    end
end
