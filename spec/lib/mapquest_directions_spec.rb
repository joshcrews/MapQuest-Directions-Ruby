require 'spec_helper'

context "Mapquest API" do
  before(:all) do
    @origin = "816 Meridian St., 37207"
    @destination = "1963 Canary Dr., 36830"
  end
  
  context "API working" do
    
    describe "directions work" do

      before(:each) do
        MapQuestDirections.any_instance.stubs(:xml).returns(File.read("spec/lib/mapquest_directions.xml"))
        @directions = MapQuestDirections.new(@origin, @destination)
      end

      it "should return distance in miles" do
        @directions.distance_in_miles.should == 310
      end

      it "should return drive time in minutes" do
        @directions.drive_time_in_minutes.should == 303
      end   
      
      it "should have a status code of 0" do
        @directions.status.should == "0"
      end

    end #describe
  end # API working
  
  context "API not working" do
    
    describe "Geocode distance estimation work" do

      before(:each) do
        MapQuestDirections.any_instance.stubs(:xml).returns(File.read("spec/lib/mapquest_directions_fail.xml"))
        @directions = MapQuestDirections.new(@origin, @destination)
      end

      it "should return distance in miles" do
        @directions.distance_in_miles.should == 0
      end

      it "should return drive time in minutes" do
        @directions.drive_time_in_minutes.should == 0
      end
      
      it "should have a status code other than 0" do
        @directions.status.should_not == "0"
      end   

    end #describe
  end # API not working
  

end
