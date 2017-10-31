class QuestionsController < ApplicationController

  # questions#INDEX
  def index
    @questions = Question.all
  end

end
