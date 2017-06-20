class Helpers
  def self.current_user(session)
    if session.has_key? :user_id
      User.find(session[:user_id])
    end
  end

  def self.is_logged_in?(session)
    !!self.current_user(session)
  end
end
