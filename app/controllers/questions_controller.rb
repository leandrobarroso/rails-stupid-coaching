class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = helpers.coach_answer_enhanced(@question)
  end
end
