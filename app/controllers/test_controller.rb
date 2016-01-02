class TestController < ApplicationController
  def index
    @types = Type.all
  end

  def post
    @title = Title.new

    test_txt = params[:test]

    # p test_txt

    @title.name = test_txt

    test_chk_box = params[:type]

    type_id = ""

    test_chk_box.each do |id|
      type_id = type_id + id + ","
    end

    # p type_id

    @title.type_id = type_id

    @title.save

    redirect_to '/test/index'
  end

  def show
    @titles = Title.order("id DESC").all

    # type_id = []
    # @titles.each do |title|
    #   if title.type_id.length > 1 then
    #     type_id = title.type_id.split(",")
    #     p 'here'
    #     # p type_id
    #   end
    #   # p type_id.length
    # end
    #
    # whereIn = Type.where(id: type_id)
    # p(whereIn)

  end

end
