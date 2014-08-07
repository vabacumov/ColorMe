get '/' do
  haml :index
end

get '/users' do #list of all users
end

post or put '/users/login' do #route for logging in
end

get '/users/new' do #form to create a new user
end

get '/users/:color' do #display all of a users splashes
end

get '/users/edit' do #form to modify profile
end

get '/splashes' do #display all splashes
end

get '/splashes/:id' do #display a particular splash
end

get '/splashes/:id/delete' do #deletes a splash (post or get?)
end

get '/splashes/new' do #display splash creation
end
