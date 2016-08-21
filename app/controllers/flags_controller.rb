class FlagsController < ApplicationController
  def create
    @survivor = Survivor.find(params[:survivor_id])
    @flag = @survivor.flags.create(flag_params)

    # flag the survivor as infected if he or she was flagged more than 2 times
  	if @survivor.flags.size > 2
		@survivor.infected = true 
		@survivor.save
  	end

    redirect_to survivor_path(@survivor)
  end
 
  private
    def flag_params
      params.require(:flag).permit(:informer, :infected)
    end

end
