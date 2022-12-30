


class OrdersController < ApplicationController

	before_action :authenticate_user!
	before_action :set_order, only: %i[show edit update destroy]



	  def index
		  @orders = current_user.orders
		end



		def new
			@order = current_user.orders.build 
		end

		def create
			@order = current_user.orders.build(order_params)
			@order.save 
			redirect_to '/orders'
		end 

		def show 
		end 

		def edit
		end 

		def update 
			@order.update(order_params)
			redirect_to '/orders'
		end 

		def destroy
			@order.destroy
			redirect_to '/orders'
		end 

		private 
	  def set_user
	   @user = User.find(params[:user_id])
	   # authorize @order 
		end 

		def set_order
			  @order = Order.find(params[:id])
			  # authorize @order 
		end 

		def order_params 
			params.require(:order).permit(:food,:food_quantity,:beverage,:beverage_quantity,:user_id)
		end 



end
