class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/animals' do 
    animals = Animal.all 
    animals.to_json(include: :shelter) 
  end

  get '/shelters' do 
    shelters = Shelter.all 
    shelters.to_json 
  end

end
