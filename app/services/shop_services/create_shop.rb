module ShopServices
  class CreateShop
    prepend SimpleCommand
    include ActiveModel::Validations

    attr_reader :shop

    def initialize(params)
      @shop ||= Shop.new(params)
    end

    def call
      if Shop.exists?(slug: shop.slug)
        errors.add(:slug, "already exists")
        return nil
      end

      if shop.save
        shop
      else
        shop.errors.messages.each do |key, value|
          value.each do |message|
            errors.add(key.to_sym, message)
          end
        end
        nil
      end
    end
  end
end
