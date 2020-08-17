module CoachHelper
  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    she_wanna_hear = "I am going to work right now!"
    if your_message == she_wanna_hear
      ""
    elsif your_message[-1] == '?'
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    she_wanna_hear = "I am going to work right now!"
    if your_message == she_wanna_hear.upcase
      ""
    elsif your_message == your_message.upcase
      "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end
end
