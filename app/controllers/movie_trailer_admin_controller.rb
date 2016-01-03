class MovieTrailerAdminController < ApplicationController
  def index
    @titles = Title.all
  end

  def show
    @addtrailer = FilmVideo.new
    @addtrailer.title_id = params[:title][:id]
    @addtrailer.video_link = params[:trailer] #the name determined in view
    @addtrailer.save
    redirect_to '/movie_trailer_admin/index'
  end
end
