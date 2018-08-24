require 'dnd'

describe Dnd do

  describe '#enquire_topic' do
    it 'asks the user about a topic' do
      expect(subject.enquire_topic).to eq('What question should I answer for you?')
    end
  end

  describe '#enquire_choice' do
    it 'asks the user about 2 choices' do
      expect(subject.enquire_choice).to eq('What choices should you have?')
    end
  end

  describe '#show_input' do
    context 'showing the topic' do
      let(:user_input) { ['What should I wear today?'] }
      it 'shows the selected topic' do
        # arrange
        set_user_input
        # act
        subject.get_topic
        # assert
        expect(subject.show_input('topic')).to eq('Your input was: What should I wear today?')
      end
    end
    context 'showing the choice2' do
      let(:user_input) { ['jeans'] }
      it 'shows the selected choice' do
        # arrange
        set_user_input
        # act
        subject.get_choice2
        # assert
        expect(subject.show_input('choice2')).to eq('Your input was: jeans')
      end
    end
  end

  def set_user_input
    allow_any_instance_of(Object).to receive(:gets).and_return(*user_input)
  end

end
