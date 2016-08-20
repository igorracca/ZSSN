class ReportsController < ApplicationController
	def index
    	@survivors = Survivor.all
    end
end
