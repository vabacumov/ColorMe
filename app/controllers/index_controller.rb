get '/' do
  # if login?
  #   haml :user_homepage
  # else
    haml :index
  # end
end

get '/users' do #list of all users
end


get '/users/:color' do #display all of a users splashes
end




