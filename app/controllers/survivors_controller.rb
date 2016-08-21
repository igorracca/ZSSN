class SurvivorsController < ApplicationController
	def index
   		@survivors = Survivor.all
   		@survivor = Survivor.new
 	end

	def show
   		@survivor = Survivor.find(params[:id])
   		@survivors = Survivor.all
 	end

	def new
		@survivor = Survivor.new
  	end

	def edit
   		@survivor = Survivor.find(params[:id])
 	end

	def create
	  	@survivor = Survivor.new(new_survivor_params)
	 
	 	if @survivor.save
	  		redirect_to @survivor
	  	else
	  		render 'new'
	  	end
	end

	def update
		@survivor = Survivor.find(params[:id])

		if @survivor.update(survivor_params)
			redirect_to @survivor
		else
			render 'edit'
		end
	end

	private
		def new_survivor_params
			params[:survivor][:infected] = false
			params.require(:survivor).permit(:name, :age, :gender, :latitude, :longitude, :water, :food, :medication, :ammunition, :infected)
		end

		private
		def survivor_params
			params.require(:survivor).permit(:name, :age, :gender, :latitude, :longitude, :water, :food, :medication, :ammunition, :infected)
		end
end
