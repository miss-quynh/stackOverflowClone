class QuestionsController < ApplicationController

  # questions#INDEX
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit

  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to show_question_path(@question)
    else

    end
  end

  def update

  end

  def destroy

  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end

end
