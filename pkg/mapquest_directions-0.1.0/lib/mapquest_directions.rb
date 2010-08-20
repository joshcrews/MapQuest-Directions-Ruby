require 'net/http'
require 'nokogiri'

class MapQuestDirections
  
  def initialize(location_1, location_2)
    @base_url = "http://www.mapquestapi.com/directions/v1/route?key=#{MAPQUEST_KEY}&outFormat=xml&"    
    @location_1 = location_1
    @location_2 = location_2
    options = "from=#{transcribe(@location_1)}&to=#{transcribe(@location_2)}"
    @xml_call = @base_url + options
    @status = find_status
  end
  
  def find_status
    doc = Nokogiri::XML(xml)
    doc.css("statusCode").text
  end

  def xml
    unless @xml.nil?
       @xml
    else
      @xml ||= get_url(@xml_call)
    end
  end

  def xml_call
    @xml_call
  end

  def drive_time_in_minutes
    if @status != "0"
      drive_time = 0
    else
      doc = Nokogiri::XML(xml)
      drive_time = doc.css("time").first.text
      convert_to_minutes(drive_time)
    end
  end

  def distance_in_miles
    if @status != "0"
      distance_in_miles = 0
    else
      doc = Nokogiri::XML(xml)
      distance_in_miles = doc.css("distance").first.text.to_i
    end
  end
  
  def status
    @status
  end
    
  private
  
    def convert_to_minutes(text)
      (text.to_i / 60).ceil
    end
  
    def transcribe(location)
      location.gsub(" ", "+")
    end

    def get_url(url)
      Net::HTTP.get(::URI.parse(url))
    end
  
end