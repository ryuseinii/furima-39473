class ItemsController < ApplicationController
  # ログインしていないユーザーはトップページに促す
  before_action :authenticate_user!, except: :index

  def index
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :description, :category_id, :status_id, :shipping_charge_id, :shipping_days_id, :prefecture_id, :price).merge(user_id: current_user.id)
  end
end
