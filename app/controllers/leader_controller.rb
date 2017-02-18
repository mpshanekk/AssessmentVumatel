class LeaderController < ApplicationController

	def new
    end

    def create
    	@leader = Leader.new(params[:leader])

		  if @leader.save
    		redirect_to @leader
   		end
    end

    def show
    	@leader = Leader.find(params[:id])
    end

    def index
    	@leader = Leader.all
  	end
end
