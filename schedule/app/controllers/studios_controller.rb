class StudiosController < ApplicationController
  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_params)
    if @studio.save
      redirect_to @studio
    else
      render :new
    end
  end
end
