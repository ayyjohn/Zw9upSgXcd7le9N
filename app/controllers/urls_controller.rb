class UrlsController < ApplicationController

  def create
    @url = Url.new(url_params)

    if @url.save
      render :index
    else
      render json: @url.errors.full_messages, status: 422
    end
  end

  def index
    @urls = Url.all
    render :index
  end

  private

  def url_params
    params.require(:url).permit(:content)
  end
end
