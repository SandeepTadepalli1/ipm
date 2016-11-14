class AddUserIdToIpAssets < ActiveRecord::Migration[5.0]
  def change
    add_column :ip_assets, :user_id, :integer
    add_index :ip_assets, :user_id
  end
end
