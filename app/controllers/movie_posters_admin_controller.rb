class MoviePostersAdminController < ApplicationController
  def index
    @titles = Title.all
    @posters = Poster.all
  end

  def show
    @addposter = Poster.new
    @addposter.title_id = params[:title][:id]
    @addposter.img_link = params[:posters] #the name determined in view
    @addposter.save
    redirect_to '/movie_posters_admin/index'






  end
end
