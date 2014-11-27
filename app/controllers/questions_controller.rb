class QuestionsController < ApplicationController
  def show
    # @question = Question.find(params[:id])
  end

  private
  def track_params
    params.require(:question).permit(:title, :description, :photo)
  end

end