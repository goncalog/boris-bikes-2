require 'dockingstation'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'expects new_bike to be working' do
    expect(subject.release_bike.working?).to eq true
  end

  it 'responds to dock_bike' do
    expect(subject).to respond_to(:dock_bike)
  end

  it 'expects bikes to be docked' do
    dockingstation = DockingStation.new
    dockingstation.dock_bike
    expect(dockingstation.bike_dock.empty?).to eq false
  end

end