class Api::V1::ShopsController < ApplicationController
  before_action :authenticate_account!

  def create
    response = ShopServices::CreateShop.call(
      shop_params.merge({account: current_account})
    )

    if response.success?
      render json: "created", status: :created
    else
      render json: {errors: response.errors}, status: :unprocessable_entity
    end
  end

  private

  def shop_params
    params.permit(
      :name,
      :slug,
      :description,
      :address,
      :instagram,
      :facebook,
      :currency,
      :whatsapp,
      :logo
    )
  end
end
