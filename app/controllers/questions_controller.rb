class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  private

  def coach_answer(your_message)
    she_wanna_hear = 'I am going to work'
    if your_message == she_wanna_hear
      'Great!'
    elsif your_message[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    she_wanna_hear = 'I am going to work'
    if your_message == she_wanna_hear.upcase
      'Great!'
    elsif your_message == your_message.upcase
      "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end
end
