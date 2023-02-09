# frozen_string_literal: true

class Account < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  validates :name, presence: true

  has_many :shops, dependent: :destroy
end
