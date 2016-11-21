class Ownership < ApplicationRecord
    belongs_to :user,required: false
    belongs_to :ip_asset,required: false
	accepts_nested_attributes_for :user
end
