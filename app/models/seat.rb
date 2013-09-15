class Seat < ActiveRecord::Base
  belongs_to :location
  attr_accessible :location_id, :name
end
