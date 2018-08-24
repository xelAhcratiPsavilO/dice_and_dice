require 'dnd'

describe Dnd do

  describe '#enquire_topic' do
    it 'aks the user about a topic' do
      expect(subject.enquire_topic).to eq('What question should I answer for you?')
    end
  end

end
