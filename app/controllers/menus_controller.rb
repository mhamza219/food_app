class MenusController < ApplicationController
	def index 
   	@menu = Menu.all
   end
end
