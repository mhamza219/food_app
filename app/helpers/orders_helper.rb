
module OrdersHelper
	def option_for_food 
		Order::FOOD_ITEMS
end
def options_for_beverage 
	Order::BEVERAGE_ITEMS
end
end

