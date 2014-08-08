### PUBLICLY ACCESSIBLE WITHOUT SESSION ###

get '/' do
  # if login?
  #   haml :user_homepage
  # else
    haml :index
  # end
end

get '/users/new' do #form to create a new user
  haml :sign_up
end

post '/users/new' do #creates the new user
  salt = BCrypt::Engine.generate_salt
  hash = BCrypt::Engine.hash_secret(params[:password], salt)
  User.create( :email => params[:email],
               :color => params[:color],
               :salt => salt,
               :pw_hash => hash )
  session[:email] = params[:email]
  redirect '/'
end

get '/users/login' do #form to login
end

post '/users/login' do #creates new session
end

get '/users/:color' do #display all of a users splashes
end

get '/users' do #list of all users
end

####### REQUIRES SESSION ########

delete '/users/logout' do #deletes session
  session.clear
  redirect '/'
end

get '/users/edit_profile' do #form to modify profile
end




