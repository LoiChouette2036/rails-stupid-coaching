class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params[:ask]
    @answer_coach = ""
    if @user_input.include?("?")
      @answer_coach = "Silly question, get dressed and go to work!"
    elsif @user_input == "I am going to work"
      @answer_coach = "Great!"
    else
      @answer_coach = "I don't care, get dressed and go to work!"
    end

  end
end
