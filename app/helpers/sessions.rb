helpers do

  #checks if a user is logged in
  def login?
    if session[:email].nil?
      return false
    else
      return true
    end
  end

#returns all the info for the currently logged in user
  def current_user
    user_email = session[:email]
    User.find_by_email(user_email)
  end

  def current_users_splashes
    @splashes = current_user.splashes
  end

  def all_splashes
    Splash.all.sort_by(&:created_at).reverse
  end
end


# def redirect?
# end
