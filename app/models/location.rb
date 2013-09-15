class Location < ActiveRecord::Base
  has_many :seats
  attr_accessible :capacity, :name
end
