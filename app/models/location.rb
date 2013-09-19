class Location < ActiveRecord::Base
  has_many :seats
  attr_accessible :capacity, :name, :address, :latitude, :longitude

  acts_as_gmappable #, :process_geocoding => true

  def self.Init_DB
    Location.destroy_all
    Location.create(name: "Wing's Chinese Restaurant",
                    address: "131 Jackson St, San Jose, CA" ,
                    capacity: 60)
    Location.create(name: "Hunan Taste Restaurant ",
                    address: "998 N 4th St, San Jose, CA",
                    capacity: 80)
    Location.create(name: "Jade China Restaurant",
                    address: "2524 Berryessa Rd, San Jose, CA",
                    capacity: 2099451)
    Location.create(name: "Golden House Chinese Restaurant ",
                    address: "7108 Santa Teresa Blvd, San Jose, CA",
                    capacity: 1526006)
    Location.create(name: "King Egg Rolls",
                    address: "980 Lundy Ave, San Jose, CA ‎",
                    capacity: 1445632)


  end

  def gmaps4rails_address
    #"#{name}, 'San Jose,CA,USA'"   #this is wrong
    "#{name}, USA"
  end

end


if Location.size >= 5
else
  Location.Init_DB
end
