class PrefecturesController < ApplicationController
  def index
  end
  def show
    @prefecture = Prefecture.find_by(prefecture_eng: params[:prefecture_eng])
  end
end
