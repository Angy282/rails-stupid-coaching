class QuestionsController < ApplicationController
  def ask
    # empty
  end

  def answer
    @user_input = params[:input]

    if @user_input.blank?
      @response = "Please ask a question."
    elsif @user_input.downcase == "i am going to work"
      @response = "Great!"
    elsif @user_input.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
