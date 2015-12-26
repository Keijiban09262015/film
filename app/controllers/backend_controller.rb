class BackendController < ApplicationController
  def index

    @types = Type.all
    @titles = Title.all

  end

  def show
    @addtype = Type.new
    @addtype.name = params[:type] #the name determined in view backend/index line 11
    @addtype.save
    redirect_to '/backend/index'

  end
end
