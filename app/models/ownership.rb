class Ownership < ApplicationRecord
    belongs_to :user
    belongs_to :ip_asset
	accepts_nested_attributes_for :user
end
