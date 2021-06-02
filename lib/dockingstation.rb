require 'bike'

class DockingStation 
  attr_reader :bike_dock

  def initialize
    @bike_dock = []
  end

  def release_bike
    new_bike = Bike.new
  end

  def dock_bike
    @bike_dock << Bike.new
  end

end