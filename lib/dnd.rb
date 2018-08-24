class Dnd

  def enquire_topic
    p "What question should I answer for you?"
  end

  def enquire_choice
    p "What choices should you have?"
  end

  def show_input(input)
    if input == 'topic'
      p "Your input was: #{@topic}"
    elsif input == 'choice1'
      p "Your input was: #{@choice1}"
    else input == 'choice2'
      p "Your input was: #{@choice2}"
    end
  end

  # private

  def get_topic
    @topic = gets
  end

  def get_choice1
    @choice1 = gets
  end

  def get_choice2
    @choice2 = gets
  end

end
