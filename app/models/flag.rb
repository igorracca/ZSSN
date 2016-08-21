class Flag < ActiveRecord::Base
  belongs_to :survivor

  validates_uniqueness_of :infected, :scope => :informer
  validates :informer, presence: true
end
