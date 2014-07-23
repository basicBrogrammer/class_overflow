class QuestionsController < ApplicationController
  respond_to :html
  def index
    @questions = Question.all
    respond_with @questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    @question.save
    flash[:notice] = "Question Added"
    respond_with @question, location: questions_path
  end

  private
  def question_params
    params.require(:question).permit :title, :content
  end
end