class SessionsController < ApplicationController
  before_action :set_exercise

  def new
    @session = @exercise.sessions.new
    @exercise.questions.each do |question|
      @session.answers.new(question: question)
    end
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])

    if @session.update(session_params)
      redirect_to dashboards_index_path
    else
      render :edit, notice: 'An error occurred, please try again.'
    end
  end

  def create
    @session = @exercise.sessions.new(session_params)
    @session.user = current_user
    @session.answers.each do |answer|
      answer.user = current_user
    end

    if @session.save
      redirect_to track_path(@exercise.track)
    else
      render :new
    end
  end

  def index
    #list of all done exercises
    @sessions = @exercise.sessions
  end

  private

    def set_exercise
      @exercise = Exercise.find(params[:exercise_id])
    end

    def session_params
      params.require(:session).permit(answers_attributes: [:original_question, :content, :question_id ])
    end
end
