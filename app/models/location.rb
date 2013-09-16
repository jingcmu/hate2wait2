class Location < ActiveRecord::Base
  has_many :seats
  attr_accessible :capacity, :name, :latitude, :longitude

  acts_as_gmappable #, :process_geocoding => true

  def self.Init_DB
    Location.destroy_all
    Location.create(name: "SJSU" , capacity: 8175133)#, latitude: 0, longitude: 30)
=begin
    #Location.create(name: "Los Angeles", capacity: 3792621 )

    Location.create(name: "Chicago",capacity: 2695598)
    Location.create(name: "Houston", capacity: 2099451)
    Location.create(name: "Philadelphia", capacity: 1526006)
    Location.create(name: "Phoenix", capacity: 1445632)
    Location.create(name: "San Antonio", capacity: 1327407)
    Location.create(name: "San Diego", capacity: 1307402 )
    Location.create(name: "Dallas", capacity: 1197816)
    Location.create(name: "San Jose", capacity: 945942)

=end
  end

  def gmaps4rails_address
    #"#{name}, 'San Jose,CA,USA'"   #this is wrong
    "#{name}, San Jose,CA,USA"
  end

end


if Location.find_by_name("New York")
  Location.Init_DB
else
  Location.Init_DB
end
