class OwnersController < ApplicationController

	def index
		@owner = Owner.all
		render json: {owners: @owner.map {|x| {name: x.name}}}
	end

	def show
		x = Owner.find_by(name: params[:owner_name])
		render json: {owner_name: x.name}
	end

end
