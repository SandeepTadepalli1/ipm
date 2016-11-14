class Removefilenamecoloumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :ip_assets, :filename
  end
end
