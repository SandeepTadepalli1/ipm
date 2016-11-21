class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:show, :addipcommittee]
	before_action :isdirector, only: [:addipcommitee]
	# before_action :set_user
	def dashboard
		@user = User.find_by username: params[:username]
	end

	def addipcommittee
		if(current_user.role != 'director')
			redirect_to user_path(current_user.username), notice: "Not Authorized to Edit these Info"
		end
		@nonips = (User.where.not(role: ['director','ipcommittee']))
	end

	def removeipcommittee
		if(current_user.role != 'director')
			redirect_to user_path(current_user.username), notice: "Not Authorized to Edit these Info"
		end
		@ips =User.where(role:'ipcommittee')
	end

	def changeroletoIpcommittee
		params[:selected_users].each do |uid|
			a=User.find(uid)
			a.role='ipcommittee'
			a.save
		end
		redirect_to user_path(current_user.username) 
	end

	def changeroletousers
		params[:selected_users].each do |uid|
			a=User.find(uid)
			a.role='user'
			a.save
		end
		redirect_to user_path(current_user.username) 
	end

	private
		def isdirector
			if(current_user.role != 'director')
				puts current_user.role
				redirect_to root_path, notice: "Not Authorized to Edit these Info"
			end
		end
end