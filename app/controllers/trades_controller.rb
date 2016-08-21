class TradesController < ApplicationController
	def create
	  	@survivor = Survivor.find(params[:survivor_id])
	  	@trade = @survivor.trades.create(trade_params)
	 
	 	@survivor1 = Survivor.new
		@survivor1 = Survivor.find(@trade.id1)
		@survivor2 = Survivor.new
		@survivor2 = Survivor.find(@trade.id2)

	 	if @survivor2.infected == true
	 		redirect_to survivor_path(@survivor)
	 	else
		 	if ((@trade.w1 * 4 + @trade.f1 * 3 + @trade.m1 * 2 + @trade.a1) == (@trade.w2 * 4 + @trade.f2 * 3 + @trade.m2 * 2 + @trade.a2))
				@survivor1.water -= @trade.w1
				@survivor1.water += @trade.w2
				@survivor1.update_attribute(:water, @survivor1.water)
				@survivor1.food -= @trade.f1
				@survivor1.food += @trade.f2
				@survivor1.update_attribute(:food, @survivor1.food)
				@survivor1.medication -= @trade.m1
				@survivor1.medication += @trade.m2
				@survivor1.update_attribute(:medication, @survivor1.medication)
				@survivor1.ammunition -= @trade.a1
				@survivor1.ammunition += @trade.a2
				@survivor1.update_attribute(:ammunition, @survivor1.ammunition)

				@survivor2.water += @trade.w1
				@survivor2.water -= @trade.w2
				@survivor2.update_attribute(:water, @survivor2.water)
				@survivor2.food += @trade.f1
				@survivor2.food -= @trade.f2
				@survivor2.update_attribute(:food, @survivor2.food)
				@survivor2.medication += @trade.m1
				@survivor2.medication -= @trade.m2
				@survivor2.update_attribute(:medication, @survivor2.medication)
				@survivor2.ammunition += @trade.a1
				@survivor2.ammunition -= @trade.a2
				@survivor2.update_attribute(:ammunition, @survivor2.ammunition)

				redirect_to survivors_path(@survivor)
			else
				redirect_to survivor_path(@survivor)		
		 	end	
		 end
	end

	private
		def trade_params
			params.require(:trade).permit(:id1, :id2, :w1, :f1, :m1, :a1, :w2, :f2, :m2, :a2)
		end

	private
		def survivor_params
			params.require(:survivor).permit(:name, :age, :gender, :latitude, :longitude, :water, :food, :medication, :ammunition, :infected)
		end
end