class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string   "email",                              default: "",   null: false
      t.string   "encrypted_password",     limit: 128, default: "",   null: false
      t.string   "reset_password_token"
      t.string   "remember_token"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",                      default: 0
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.string   "confirmation_token"
      t.datetime "confirmed_at"
      t.datetime "confirmation_sent_at"
      t.string   "password_salt"
      t.datetime "reset_password_sent_at"
      
      # t.database_authenticatable :null => false
      # t.recoverable
      # t.rememberable
      # t.trackable
      # t.confirmable
      # t.encryptable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :users
  end
end