class StudiosController < ApplicationController

  def show
    @studio = Studio.find(params[:id])
  end

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

  private

  def studio_params
    params.require(:studio).permit(:name, :address, :latitude, :longitude)
  end
end
