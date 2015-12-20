class TestController < ApplicationController
  def index
  end

  def post
    test_txt = params[:test]

    p test_txt

    redirect_to '/test/index'
  end

end
