require 'rspec'
require 'vehicle'

describe Vehicle do 
  let(:vehicle) { Vehicle.new(5, 10, "Toyota", "ABCD") }

  describe '#init' do 
    it 'should have passed in values set' do
      expect(vehicle.max_passengers).to eq(5)
      expect(vehicle.age).to eq(10)
      expect(vehicle.manufacturer).to eq("Toyota")
      expect(vehicle.model_num).to eq("ABCD")
    end
  end

  describe '#electric?' do
    it 'should default to not electric' do
      expect(vehicle.electric?).to be false
    end
  end

  describe '#weapons?' do
    it 'should default to weaponless' do
      expect(vehicle.weapons?).to be false
    end
  end
end
