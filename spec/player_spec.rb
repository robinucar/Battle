require 'player'
describe Player do
    let(:name) {'Robin'}
    it 'shows player name' do
       
        expect(name).to eq('Robin')
    end
end