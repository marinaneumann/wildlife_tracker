class RegionsController < ApplicationController

  def index
    @regions = Region.all
    render('regions/index.html.erb')
  end


end
