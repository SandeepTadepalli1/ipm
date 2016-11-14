class IpAsset < ApplicationRecord
    has_attached_file :ip_asset_file
    do_not_validate_attachment_file_type :ip_asset_file

    # validates_attachment_content_type :ip_asset_file, content_type: 'application/pdf'

    belongs_to :user
    has_many :ownerships, dependent: :destroy
    has_many :owner_users, through: :ownerships, source: :user


end
