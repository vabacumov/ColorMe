get '/splashes' do #display all splashes
  @splashes = Splash.all
  haml :splash
end

get '/users/:id/splashes' do #display a particular splash
  @splashes = current_user.splashes
  @splash_contents = @splashes.map {|splash| splash[:content]}
  p "LOOK HERE"
  p @splash_contents
  haml :user_homepage
end

post '/users/splash/new' do ##recieve new post
  Splash.create(content: params[:content], user_id: current_user.id)
  redirect "/users/#{current_user.id}/splashes"
end


get '/users/:user_id/splashes/:id' do #display a particular splash

end

get '/users/:user_id/splashes/:id/delete' do #dipslays confirmation page to delete a particular splash
  # @user =
  haml :splash_delete
end

delete '/users/:user_id/splashes/:id/delete' do #delete a particular splash
  @user = User.find(params[:user_id])
  @splash = Splash.find(params[:id])
  @splash.destroy
  redirect "/users/#{@user.id}/splashes"
end

