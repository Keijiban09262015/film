class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
  end

  def test
  end
end
