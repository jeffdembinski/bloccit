module UsersHelper

  def any_posts?(user)
    if user.posts.count > 0
      render user.posts
    else
      render html: tag.h4("#{user.name} has not created any posts yet.")
    end
  end

  def any_comments?(user)
    if user.comments.count > 0
      render user.comments
    else
      render html: tag.h4("#{user.name} has not made any comments yet.")
    end
  end

  def any_favorites?(user)
    if user.favorites.count > 0
      render partial: 'favorites/myfavorites', user.favorites
    else
      render html: tag.h4("#{user.name} has not made any comments yet.")
    end
  end

end
