class TitleController < ApplicationController
  def index
    # @titles = Title.all

    # 作成時間で並ぶ
    @titles = Title.order("id DESC").all

  end

  def show
  end
end
