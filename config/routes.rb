Rails.application.routes.draw do

  match('/', {:via => :get, :to => 'sightings#index'})
  match('/index', {:via => :get, :to => 'sightings#index'})

  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings/index.html', {:via => :get, :to => 'sightings#index'})

  match('animals', {:via => :get, :to => 'animals#index'})
  match('animals/new', {:via => :get, :to => 'animals#new'})

  match('animals', {:via => :post, :to => 'animals#create'})
  match('animals/:id', {:via => :get, :to => 'animals#show'})
  match('animals/:id/edit', {:via => :get, :to => 'animals#edit'})
  match('animals/:id/', {:via => [:patch, :put], :to => 'animals#update'})

  match('regions', {:via => :get, :to => 'regions#index'})
  match('regions', {:via => [:patch, :put], :to => 'regions#create'})

end
