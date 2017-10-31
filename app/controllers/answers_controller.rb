class AnswersController < ApplicationController

  # answers#NEW
  def new
    @answer = Answer.new
  end

  # answers#CREATE
  def create
    if logged_in?
      @answer = Answer.new(answer_params)
      @question = Question.find(@answer.question_id)
      current_user.answers << @answer
      redirect_to question_path(@question)
    else
      @errors = ["You need to be logged in to post a answer."]
      redirect_to new_question_answer_path
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end

end
