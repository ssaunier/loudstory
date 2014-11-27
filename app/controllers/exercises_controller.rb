class ExercisesController < ApplicationController
  def show
    @exercise = Exercise.find(params[:id])
  end

  def edit

  end

  private
  def exercise_params
    params.require(:exercise).permit(:title, :description, :photo)
  end
end
