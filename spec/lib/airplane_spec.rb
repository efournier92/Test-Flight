require_relative '../../models/airplane'

describe Airplane do

  let(:airplane) { Airplane.new('Boeing', 10, 150) }

  describe '#initialize' do
    it 'should make an airplane object' do
      expect(airplane).to be_a(Airplane)
    end
    it 'should be a certain type of plane' do
      expect(airplane.type).to eq('Boeing')
    end
    it 'should have a wing_loading reader' do
      expect(airplane.wing_loading).to eq(10)
    end
    it 'should have a horsepower reader' do
      expect(airplane.horsepower).to eq(150)
    end
  end

  describe '#start' do
    it 'if not started, it should change start to true' do
      expect(airplane.start).to eq(true)
    end
    it 'if started, it should inform user' do
      airplane.start
      expect(airplane.start).to eq('Engine is already running')
    end
  end

  describe '#takeoff' do
    it "should inform user if engine isn't running" do
      expect(airplane.takeoff).to eq('Engine must be on for takeoff')
    end
    it 'should change state of flying to true if engine is running' do
      airplane.start
      airplane.takeoff

      expect(airplane.flying).to eq(true)
    end
  end

  describe '#land' do
    it "should inform user if plane isn't flying" do
      airplane.start

      expect(airplane.land).to eq("You can't land a plane that's on the ground!")
    end

    it 'should return message that plane landed safely' do
      airplane.start
      airplane.takeoff

      expect(airplane.land).to eq('The plane landed safely')
    end

    it "should inform user if there's not enough fuel" do
      airplane.fuel = 5

      expect(airplane.start).to eq("You don't have enough fuel")
    end
  end
end
