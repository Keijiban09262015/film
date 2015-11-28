class PostController < ApplicationController
  def index
    @types = Type.all
    @titles = Title.all
  end

  def show
  end
end
