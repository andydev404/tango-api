class DeviseTokenAuthCreateAccounts < ActiveRecord::Migration[7.0]
  def change
    
    create_table(:accounts) do |t|
      ## Required
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.boolean  :allow_password_change, :default => false

      ## Rememberable
      t.datetime :remember_created_at

      ## User Info
      t.string :name
      t.string :email

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :accounts, :email,                unique: true
    add_index :accounts, [:uid, :provider],     unique: true
    add_index :accounts, :reset_password_token, unique: true
    # add_index :accounts, :unlock_token,         unique: true
  end
end
