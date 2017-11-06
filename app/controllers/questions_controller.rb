class QuestionsController < ApplicationController
  def answer
    # TODO: Display user's question and the coach's answer
    # instance @var will make it accessible in the view
    # 1. Get the question from the form (name of the input)
    @question = params[:user_question]
    # 2. Get the answer (String) from the conditional
    @answer = coach_answer(@question)
  end

  def ask
    # nothing
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    # 1. Is your_message a question (includes "?")
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
      # 2. Is your_message a specific String
    elsif your_message == "I am going to work right now!"
      return ""
      # 3. Is your_message not a question OR specific String
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
