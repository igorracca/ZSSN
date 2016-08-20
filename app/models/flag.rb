class Flag < ActiveRecord::Base
  belongs_to :survivor

  # I tried to use both the infected and the informer as primary key so a survivor could report more than one survivor but not the same one, however it did no work :/
  validates_uniqueness_of :infected, :scope => :informer
  validates :informer, presence: true
end
