get '/' do
  # if login?
  #   haml :user_homepage
  # else
    haml :index
  # end
end

get '/users' do #list of all users

end

get '/sessions/new' do #route for logging in
end

post '/sessions' do
end

delete '/sessions/:id' do
end

get '/users/new' do #form to create a new user
  haml :sign_up
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
