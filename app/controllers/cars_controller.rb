class CarsController < ApplicationController
	def create
    	@leader = Leader.find(params[:leader_id])
    	@car = @leader.cars.create(params[:car])

    	if @car.save
    		#redirect_to leader_cars_path(@leader)
    		redirect_to leader_path(@leader)
   		end
  	end
 
  	
end
