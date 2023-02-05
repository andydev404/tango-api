class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.references :account, null: false, foreign_key: true
      t.string :name, null: false
      t.string :slug, null: false, index: { unique: true }
      t.string :description, null: false
      t.string :address, null: false
      t.string :instagram
      t.string :facebook
      t.string :currency, null: false, default: "USD"
      t.string :whatsapp, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
