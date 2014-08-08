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
    user = User.find_by_email(user_email)
    return user
  end
end

# def redirect?
# end
