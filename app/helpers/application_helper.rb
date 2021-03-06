module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def colorize(name)
    return [0,255,0] if name.length < 3
    alphabet = ('a'..'z').to_a
    [name[0],name[1],name[2]].map { |letter| (alphabet.index(letter.downcase)/26.0 * 255).round(0) }
  end
end
