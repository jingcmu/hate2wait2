require 'json'
require 'net/http'
require 'rexml/document'
require 'uri'

module LocationsHelper

  def get_seats_number(location_id)
    #url = URI.parse('localhost','/seats',3000)
    url = URI.parse('http://hate2wait.herokuapp.com/seats/new')
    #xml_data = Net::HTTP.get_response('http://hate2wait2.herokuapp.com','/seats').body
    Net::HTTP.post_form (url, "name" => "xiaoli", "location_id" => "2")
    #xml_data
=begin
    hash_data = Hash.from_xml(xml_data)
    json_data = hash_data.to_json
    number_of_seats = 0
    seats = hash_data["seats"]
    if seats == nil
      return number_of_seats
    end
    seats.each do |seat|
      seat.each do |key, value|
        if key.to_s == 'location_id' and value == location_id
          number_of_seats = number_of_seats + 1
        end
      end
    end
    number_of_seats
=end
    #xml_data
  end

end
