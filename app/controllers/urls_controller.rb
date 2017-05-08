require 'open-uri'

class UrlsController < ApplicationController

  def create
    url = url_params
    document = Nokogiri::HTML(open(url))
    headers = document.css('h1').map(&:text)
    sub_headers = document.css('h2').map(&:text)
    sub_sub_headers = document.css('h3').map(&:text)
    content = headers + sub_headers + sub_sub_headers
    content = content.join(' ')
    @url = url.new(url, content)
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
    params.require(:url).permit(:url)
  end
end
