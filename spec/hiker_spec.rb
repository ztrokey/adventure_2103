require './lib/hiker'
require './lib/park'

RSpec.describe Hiker do
  describe '#initialize' do
    it 'exists' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker).to be_a(Hiker)
    end

    it 'has attributes' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker.name).to eq('Dora')
      expect(hiker.experience_level).to eq(:moderate)
      expect(hiker.snacks).to eq({})
      expect(hiker.parks_visited).to eq([])
    end
  end

  describe '#pack' do
    it 'add items to snacks' do
      hiker = Hiker.new('Dora', :moderate)
      hiker.pack('water', 1)
      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)

      expect(hiker.snacks).to eq({"trail mix"=>3, "water"=>2})
    end
  end

  describe '#visit' do
    it 'adds to parks_visited' do
      hiker = Hiker.new('Dora', :moderate)
      park1 = Park.new('Capitol Reef')
      park2 = Park.new('Bryce Canyon')
      hiker.visit(park1)
      hiker.visit(park2)


      expect(hiker.parks_visited).to eq([park1, park2])
    end
  end
end