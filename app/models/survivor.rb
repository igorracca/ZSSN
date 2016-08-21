class Survivor < ActiveRecord::Base
	has_many :flags
	has_many :trades

  	validates :name, presence: true, uniqueness: true
  	validates :latitude, :longitude, presence: true
  	validates :age, :water, :food, :medication, :ammunition, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 
end
