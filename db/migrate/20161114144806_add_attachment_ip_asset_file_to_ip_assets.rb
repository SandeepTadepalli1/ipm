class AddAttachmentIpAssetFileToIpAssets < ActiveRecord::Migration
  def self.up
    change_table :ip_assets do |t|
      t.attachment :ip_asset_file
    end
  end

  def self.down
    remove_attachment :ip_assets, :ip_asset_file
  end
end
