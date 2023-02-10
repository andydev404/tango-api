class Api::V1::ShopsController < ApplicationController
  before_action :authenticate_account!

  def create
    render json: "ok"
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
