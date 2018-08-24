require 'dnd'

describe Dnd do

  describe '#enquire_topic' do
    it 'aks the user about a topic' do
      expect(subject.enquire_topic).to eq('What question should I answer for you?')
    end
  end

  describe '#enquire_choice' do
    it 'asks the user about 2 choices' do
      expect(subject.enquire_choice).to eq('What choices should you have?')
    end
  end

end
