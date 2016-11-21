class Addcolstakeinownerships < ActiveRecord::Migration[5.0]
  def change
  	add_column :ownerships, :stakeholdingpercent, :float
  end
end
