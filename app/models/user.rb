class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :ownerships, dependent: :destroy
	has_many :ip_assets, through: :ownerships
     # has_many :owners_ip_assets, through: :ownerships, source: :ip_asset
     # validates_uniqueness_of :username
	validates :username, :uniqueness => {:case_sensitive => false}
end
