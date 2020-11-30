class AddAuthDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    # columns to track the login provider    
    add_column :users, :provider, :string
    add_column :users, :uid, :string

    # columns for tracebale    
    add_column :users, :sign_in_count, :integer, default: 0, null: false
    add_column :users, :current_sign_in_at, :datetime 
    add_column :users, :last_sign_in_at, :datetime 
    add_column :users, :current_sign_in_ip, :string 
    add_column :users, :last_sign_in_ip, :string 

    # columns for reminderable
    #add_column :user, :remember_created_at, :datetime

  end
end
