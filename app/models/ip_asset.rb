class IpAsset < ApplicationRecord
    has_attached_file :ip_asset_file
    # do_not_validate_attachment_file_type :ip_asset_file

    validates_attachment_content_type :ip_asset_file, content_type: 'application/pdf'

    # belongs_to :user
    has_many :ownerships, dependent: :destroy
    # has_many :owner_users, through: :ownerships, source: :user
    has_many :users, through: :ownerships

    accepts_nested_attributes_for :ownerships,reject_if: :all_blank, allow_destroy: true


end
