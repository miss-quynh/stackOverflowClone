class QuestionsController < ApplicationController

  # questions#INDEX
  def index
    @questions = Question.all
  end

  # questions#SHOW
  def show
    @question = Question.find(params[:id])
  end

  # questions#NEW
  def new
    @question = Question.new
  end

  # questions#CREATE
  def create
    if logged_in?
      @question = Question.new(question_params)
      @answers = Answer.where(question_id: @question.id)
      current_user.questions << @question
      redirect_to question_path(@question)
    else
      @errors = ["You need to be logged in to post a question."]
      redirect_to new_question_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end

end
