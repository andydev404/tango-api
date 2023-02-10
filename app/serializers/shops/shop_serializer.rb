class Shops::ShopSerializer < Panko::Serializer
  attributes :name,
    :slug,
    :description,
    :address,
    :instagram,
    :facebook,
    :currency,
    :whatsapp
end
