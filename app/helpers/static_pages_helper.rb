require 'json'
require 'net/http'
require 'rexml/document'
require 'uri'

module StaticPagesHelper

  def show_HTTP_get(url_string, format)
    url = URI.parse(url_string)
    xml_data = Net::HTTP.get_response(url).body
    hash_data = Hash.from_xml(xml_data)
    json_data = hash_data.to_json
    if format == 'xml'
      xml_data
    elsif format == 'hash'
      hash_data
    elsif format == 'json'
      json_data
    end
  end

end