class ItemsController < ApplicationController

  def create
  end
  def new
    current_item.update(item_params)
  end

  private

  def itemr_params
    params.require(:user).permit(:name, :email)
  end

    # redirect_to ""
end
