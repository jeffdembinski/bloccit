module TopicsHelper
  def user_is_authroized_for_topics?
    current_user && current_user.admin?
  end 
end
