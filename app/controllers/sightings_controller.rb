class SightingsController < ApplicationController
  def new
    @regions = Region.all
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new
  end

  def create
    @regions = Region.all
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new(sighting_params)
    if @sighting.save
      redirect_to animal_path(@sighting.animal)
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
    render :edit
  end

  def update
    @sighting = Sighting.find(params[:id])
    @animal = @sighting.animal
    if @sighting.update(sighting_params)
      redirect_to animal_path(@animal)
    else
      render 'sightings/edit'
    end
  end

  def destroy
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to animal_path(@animal)
  end

private
  def sighting_params
    params.require(:sighting).permit(:sight_date, :latitude, :longitude, :region_id)
  end
end
