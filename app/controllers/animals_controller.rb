class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    render('animals/index.html.erb')
  end

  def new
    @animal = Animal.new
    render('animals/new.html.erb')
  end

  def create
    @animal = Animal.new(params[:animal])

    if @animal.save
      render('animals/success.html.erb')
    else
      render('animals/new.html.erb')
    end
  end

  def show
    @animal = Animal.find(params[:id])
    render('animals/show.html.erb')
  end

  def edit
    @animal = Animal.find(params[:id])
    render('animals/show.html.erb')
  end

  def update
    @animals = Animal.find(params[:id])
    if @animal.update(params[:animal])
      render('animals/success.html.erb')
    else
      render('animals/update.html.erb')
    end
  end
end
