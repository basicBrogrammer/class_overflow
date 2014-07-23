class AnswersController < ApplicationController
  respond_to :html
  def index
    @answers = Answer.all
  end
  def new
    @answer = Answer.new

  end

  def create
    @answer = Answer.new(answer_params)
    @answer.save
    flash[:notice] = "Answer Added"
    respond_with @answer, location: answers_path
  end

  private
  def answer_params
    params.require(:answer).permit :contributor, :feedback
  end
end
