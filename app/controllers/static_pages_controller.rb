class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new
    @photos = flickr.photos.search(tags: params[:tags], per_page: 20) if params[:tags]
  end
end
