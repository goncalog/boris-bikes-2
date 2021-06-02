require 'dockingstation'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'expects new_bike to be working' do
    dockingstation = DockingStation.new
    dockingstation.dock_bike
    expect(dockingstation.release_bike.working?).to eq true
  end

  it 'responds to dock_bike' do
    expect(subject).to respond_to(:dock_bike)
  end

  it 'expects bikes to be docked' do
    dockingstation = DockingStation.new
    dockingstation.dock_bike
    expect(dockingstation.bike_dock.empty?).to eq false
  end

  it 'raises an error when trying to get a bike with empty docking station' do
    expect { subject.release_bike }.to raise_error "empty docking station"
  end

  it 'raises an error when trying to dock bike when docking station is full' do
    subject.dock_bike
    expect { subject.dock_bike }.to raise_error "full docking station"
  end

end