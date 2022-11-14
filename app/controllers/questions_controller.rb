class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]

      if @questions.downcase == "i am going to work right now!"
        @answer = "Great !"
      elsif @questions.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
  end
end
