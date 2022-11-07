class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question] if params[:question]
    @answer = if @question == 'I am going to work!'
                'Great!'
              elsif @question.end_with?('?')
                'Silly question, Get dresses and go to work!'
              else
                "I don't care get dressed and go to work!"
              end
  end
end
