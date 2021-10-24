module ApplicationHelper
  def gravatar_for(user, options = { size: 80 } )
    hash = Digest::MD5.hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "http://gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded mx-auto d-block shadow")
  end

end
