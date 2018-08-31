class Dnd

  def enquire_topic
    p "What question should I answer for you?"
  end

  def enquire_choice
    p "What choices should you have?"
  end

  def enquire_option
    p "What options would you like to include?"
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

  def overwrite_input(input)
    if input == 'topic'
      get_topic
      p "Your input is now: #{@topic}"
    elsif input == 'choice1'
      get_choice1
      p "Your input is now: #{@choice1}"
    else input == 'choice2'
      get_choice2
      p "Your input is now: #{@choice2}"
    end
  end

  def answer
    @result1 = randomize_choice1
    @result2 = randomize_choice2
    p "You should go for #{@result1} and #{@result2}"
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

  def get_option11
    @option11 = gets
  end

  def get_option12
    @option12 = gets
  end

  def get_option21
    @option21 = gets
  end

  def get_option22
    @option22 = gets
  end

  def collect_options_for_choice1
    @options1 = []
    @options1 << @option11
    @options1 << @option12
  end

  def collect_options_for_choice2
    @options2 = []
    @options2 << @option21
    @options2 << @option22
  end

  def randomize_choice1
    @options1.sample
  end

  def randomize_choice2
    @options2.sample
  end

end
