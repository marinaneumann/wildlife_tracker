class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  # before_action :builder, only [:create, :read, :update, :destroy]

  def new
    # render('tasks/show.html.erb')
  end

  def create

  end

  def list

  end

  def read

  end

  def update

  end

  def destory

  end

  def builder
    # @new_sighting = Sighting.create(params[:id])
  end

end
