class OrdersController < ApplicationController

	before_filter :authenticate_user!
	
	def index
		# Just here for sho untill used.
		render "static_pages/index"
	end

	def show
	end

	def new
	end

	def create
	end

	def destroy
	end

	
end
