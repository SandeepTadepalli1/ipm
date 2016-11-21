class Addcoltoipassets < ActiveRecord::Migration[5.0]
  def change
  	    add_column :ip_assets, :approval_status, :string
	    add_column :ip_assets, :visibility, :string
  end
end
