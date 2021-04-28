require './lib/trail'

RSpec.describe Trail do
  describe '#initialize' do
    it 'exists' do
      trail1 = Trail.new({name: 'Grand Wash',
                        length: '2.2 miles',
                         level: :easy})

      expect(trail1).to be_a(Trail)
    end

    xit 'has attributes' do

      expect().to eq()
    end
  end
end 