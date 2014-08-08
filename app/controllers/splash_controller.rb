get '/splashes' do #display all splashes
  @splashes = Splash.all
  haml :splash
end

get '/users/:user_id/splashes' do #display a particular splash
  @user = User.find(params[:user_id])
  @splashes = @user.splashes
  haml :user_homepage
end

get '/users/:user_id/splashes/:id' do #display a particular splash
end

get '/users/:id/splashes/delete' do #deletes a splash (post or get?)
end

get '/users/:id/splashes/new' do #display splash creation
end
