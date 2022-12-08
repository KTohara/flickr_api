class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new

    flickr.photos.search(user_id: params[:user_id]) if params[:user_id]
  end
end
