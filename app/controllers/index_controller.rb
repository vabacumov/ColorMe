### PUBLICLY ACCESSIBLE WITHOUT SESSION ###

get '/' do
  #check logic here so person doesn't go back
  if login?
    @splashes = all_splashes
    # @splashes_user = current_user.splashes
    # @splashes_all = Splash.all
    #.sort_by(&:created_at).
    #@splashes.map {|splash| splash[:content]}
    haml :user_homepage
  else
    haml :homepage, :layout => false
  end
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
  redirect "/users/#{current_user.id}/splashes"
end

get '/users/login' do #form to login
  haml :sign_in
end

post '/users/login' do #creates new session
  if User.find_by_email(params[:email]).valid?
    user = User.find_by_email(params[:email])
    if user[:pw_hash] == BCrypt::Engine.hash_secret(params[:password], user[:salt])
      session[:email] = user[:email]
      redirect '/'
    else
      haml :error
    end
  end
end

get '/users' do #list of all users
end

get '/users/:user_id' do
  @splashes = User.find(params[:user_id]).splashes
  haml :user_profile
end

####### REQUIRES SESSION ########

delete '/users/logout' do #deletes session
  session.clear
  redirect '/'
end

get '/users/edit' do #form to modify profile
end




