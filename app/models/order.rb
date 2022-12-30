class Order < ApplicationRecord
belongs_to :user

 FOOD_ITEMS = ["Pizza","Burger","Chicken"]

	BEVERAGE_ITEMS = ["Cold-Coffee","Cold-Drink","Mojito"]




def food_price 
	if food == "Burger"
		90
	elsif food == "Pizza"
		120
	else 
		100
	end 
end 


 def beverage_price 

 	if beverage == "Cold-Coffee"
 		50
 	elsif beverage == "Cold-Drink"
 		30
 	else
 		40
 	end 
 end 

 def total_price
  
 	(food_quantity * food_price) + (beverage_quantity * beverage_price)
 end 

end
