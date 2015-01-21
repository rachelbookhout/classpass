class StudiosController < ApplicationController

  def index
    @geojson = []
    @requests.each do |item|
      @geojson << {
      type: 'Feature',
      geometry: {
      type: 'Point',
      coordinates: [item.longitude, item.latitude]
      },
      properties: {
      name: item.dog_name,
      photo: "#{item.photo}",
      num: item.id,
      start_time: item.start_time.to_s(:times),
      end_time: item.end_time.to_s(:times),
      :'marker-color' => '#00607d',
      :'marker-symbol' => 'circle',
      :'marker-size' => 'medium'
      }
    }
    end
    respond_to do |format|
      format.html
      format.json { render json: @geojson }
    end
  end
  end

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
