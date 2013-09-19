class Location < ActiveRecord::Base
  has_many :seats
  attr_accessible :capacity, :name, :address, :latitude, :longitude

  acts_as_gmappable #, :process_geocoding => true

  def self.Init_DB
    Location.destroy_all
    Location.create(name: "Wings Chinese Restaurant",
                    address: "131 Jackson St, San Jose, CA" ,
                    capacity: 60)
    Location.create(name: "Hunan Taste Restaurant ",
                    address: "998 N 4th St, San Jose, CA",
                    capacity: 80)
    Location.create(name: "Jade China Restaurant",
                    address: "2524 Berryessa Rd, San Jose, CA",
                    capacity: 77)
    Location.create(name: "Golden House Chinese Restaurant",
                    address: "7108 Santa Teresa Blvd,San Jose,CA",
                    capacity: 102)

  end

  def gmaps4rails_address
    #"#{name}, 'San Jose,CA,USA'"   #this is wrong
    "#{address}, USA"
  end

end

if Location.find_by_name("Wings Chinese Restaurant")
else
  Location.Init_DB
end
