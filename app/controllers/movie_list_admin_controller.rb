class MovieListAdminController < ApplicationController
  def index
    @types = Type.all
    # 作成時間で並ぶ
    @titles = Title.order("id DESC").all
  end

  def show
    @addmovie = Title.new
    @addmovie.name = params[:titles]
    
    type_chk_box = params[:type_id]

    type_id = ""

    type_chk_box.each do |id|
      type_id = type_id + id + ","
    end
    @addmovie.type_id = type_id
    @addmovie.comming =params[:comingtime]
    @addmovie.save

    redirect_to '/movie_list_admin/index'
  end

end
