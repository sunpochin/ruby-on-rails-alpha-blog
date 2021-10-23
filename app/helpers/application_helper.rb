module ApplicationHelper
  def gravatar_for(user)
    hash = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{hash}"
    image_tag(gravatar_url, alt: user.username)
  end

end
