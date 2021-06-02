require 'dockingstation'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'expects new_bike to be working' do
    expect(subject.release_bike.working?).to eq true
  end

end