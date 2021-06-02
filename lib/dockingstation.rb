require 'bike'

class DockingStation 
  attr_reader :bike_dock

  def initialize
    @bike_dock = []
  end

  def release_bike
    if @bike_dock.empty? 
      raise "empty docking station"
    else
      return Bike.new
    end
  end
  
  def dock_bike
    fail "full docking station" unless @bike_dock.empty?
    @bike_dock << Bike.new
  end

end