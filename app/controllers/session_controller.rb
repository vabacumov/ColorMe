get '/sessions/new' do #route for logging in
end

post '/sessions' do
end

delete '/sessions/:id' do
end

post '/users/login' do #route for logging in
end

get '/users/edit' do #form to modify profile
end

get '/users/new/' do #form to create a new user
  haml :sign_up
end

post '/users' do

end
