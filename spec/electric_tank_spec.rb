require 'rspec'

require 'vehicle'
require 'ground'
require 'tank'
require 'electric_tank'

describe ElectricTank do 
  let(:etank) { ElectricTank.new(10, "Thomas Engines", "ROMML") }

  describe '#init' do
    it 'should have the values of those passed in' do
      expect(etank.age).to eq(10)
      expect(etank.manufacturer).to eq("Thomas Engines")
      expect(etank.model_num).to eq("ROMML")
    end

    it 'should have additional values set for super' do
      expect(etank.wheel_num).to eq(0)
      expect(etank.max_passengers).to eq(8)
    end

    it 'should have ammo values set' do 
      expect(etank.MAX_AMMO).to eq(50)
      expect(etank.remaining_ammo).to eq(50)
    end
  end

  describe 'combat' do
    it 'should have combat methods available' do 
      expect(etank).to respond_to(:weapons?)
      expect(etank).to respond_to(:shoot!)
      expect(etank).to respond_to(:reload!)
    end

    describe '#weapons?' do 
      it 'should have weapons' do
        expect(etank.weapons?).to eq(true)
      end
    end

    describe '#shoot!' do 
      it 'should decrement remaining_ammo' do
        expect(etank.remaining_ammo).to eq(50)
        etank.shoot!
        expect(etank.remaining_ammo).to eq(49)
      end

      it 'should do nothing if no ammo' do
        etank.remaining_ammo = 0
        etank.shoot!
        expect(etank.remaining_ammo).to eq(0)
      end
    end

    describe '#reload!' do
      it 'should set remaining_ammo back to MAX_AMMO' do
        etank.remaining_ammo = 25
        etank.reload!
        expect(etank.remaining_ammo).to eq(50)
      end
    end
  end

  describe '#electric?' do
    it 'should have a #electric? method' do
      expect(etank).to respond_to(:electric?)
    end

    it 'should be electric' do
      expect(etank.electric?).to eq(true)
    end
  end
end
