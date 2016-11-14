class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
      t.integer :user_id
      t.integer :ip_asset_id

      t.timestamps
    end
    add_index :ownerships, :user_id
    add_index :ownerships, :ip_asset_id
  end
end
