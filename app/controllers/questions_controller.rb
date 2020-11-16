class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @reply = params[:answer]
    if @reply.include?('?')
      @answer = "Silly question, get dressed and go to work!"
    elsif @reply == "I am going to work right now!"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
