class PagesController < ApplicationController
  def home
  end
  def about
  end
  # def food_truck_cuisine
  #   babbys_food_truck = FoodTruck.first
  #
  #   return render json: {
  #     :location=>babbys_food_truck.location,
  #     :food_truck_name=>babbys_food_truck.owner,
  #     :location_updated=> Time.now-1.minute,
  #     :cuisine=> babbys_food_truck.type
  #   }
  # end
end
