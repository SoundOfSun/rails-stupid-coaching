class QuestionsController < ApplicationController
  def answer
    # instance var will make it accessible in the view
    @question = params[:user_question]
    @answer = coach_answer(@question)
  end

  def ask
    # nothing
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
