class TracksController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
    @exercises = @track.exercises.order(:position)
  end

  def new

  end

  private
  def track_params
    params.require(:track).permit(:title, :description, :photo)
  end
end
