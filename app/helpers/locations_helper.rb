require 'json'
require 'net/http'
require 'rexml/document'

module LocationsHelper
  def get_seats_number(location_id)
    #url = URI.parse('http://localhost:3000/seats')
    url = URI.parse('http://hate2wait2.herokuapp.com/seats')
    xml_data = Net::HTTP.get_response(url).body
=begin
    hash_data = Hash.from_xml(xml_data)
    json_data = hash_data.to_json
    number_of_seats = 0
    seats = hash_data["seats"]
    seats.each do |seat|
      seat.each do |key, value|
        if key.to_s == 'location_id' and value == location_id
          number_of_seats = number_of_seats + 1
        end
      end
    end

    number_of_seats
=end
  end
end
