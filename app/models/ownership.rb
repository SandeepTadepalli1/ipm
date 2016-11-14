class Ownership < ApplicationRecord
    belongs_to :user
    belongs_to :ip_asset
end
