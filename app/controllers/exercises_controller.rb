class ExercisesController < ApplicationController
  def show
    @exercise = Exercise.find(params[:id])
  end

  private
  def exercise_params
    params.require(:exercise).permit(:title, :description, :uid)
  end
end
