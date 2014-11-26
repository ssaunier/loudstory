class TracksController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
    @exercises = @track.exercises
  end

  private
  def track_params
    params.require(:track).permit(:title, :description)
  end
end
