class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    if @question.downcase == 'I dont care, get dressed and go to work!'
      @answer = ''
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work'
    else
      @answer = 'Great!'
    end
    # render 'questions/answer.html.erb'
  end
end
