class Shop < ApplicationRecord
  enum status: {inactive: 0, active: 1}

  validates :name,
    :slug,
    :description,
    :address,
    :whatsapp,
    presence: true

  validates :slug, length: {maximum: 50}
  validates :description, length: {maximum: 200}

  has_one_attached :logo
  belongs_to :account
end
