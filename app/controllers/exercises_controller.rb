class ExercisesController < ApplicationController

  def edit

  end

  private
  def exercise_params
    params.require(:exercise).permit(:title, :description, :photo)
  end
end
