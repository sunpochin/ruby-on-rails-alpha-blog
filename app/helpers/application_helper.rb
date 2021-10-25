module ApplicationHelper

  # get the gravatar.
  def gravatar_for(user, options = { size: 80 } )
    hash = Digest::MD5.hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "http://gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded mx-auto d-block shadow")
  end

  def current_user
    # if we already have a current user, return it, otherwise we make a hit to db to get it.
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
       
    # if session[:user_id]
    #   User.find(session[:id])
  end

  def logged_in?
    # return true of false based on the current_user
    !!current_user
  end

end
