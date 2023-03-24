class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # Animal Controllers Full CRUD
  get '/animals' do 
    animals = Animal.all 
    animals.to_json(include: :shelter) 
  end

  get '/animals/:id' do
    animal = Animal.find(params[:id])
    animal.to_json(include: :shelter)
  end

  delete '/animals/:id' do
    animal = Animal.find(params[:id])
    animal.destroy
    animal.to_json
  end

  post '/animals' do
    animal = Animal.create(
      name: params[:name],
      species: params[:species],
      breed: params[:breed],
      sex: params[:sex],
      age: params[:age],
      image: params[:image],
      shelter_id: params[:shelter_id]
    )
    animal.to_json
  end


  # Shelter Controllers READ/CREATE
  get '/shelters' do 
    shelters = Shelter.all 
    shelters.to_json 
  end

  post '/shelters' do
    shelter = Shelter.create(
      name: params[:name],
      address: params[:address],
      email: params[:email],
      phone: params[:phone],
      image: params[:image],
    )
    shelter.to_json
  end

end
