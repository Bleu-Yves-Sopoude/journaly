class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :comments
  has_many :likes

  def rencent_post
    posts.order(created_at: :desc).limit(3)
  end

  def update_post_counter
    user.update(posts_counter: user.post.count)
  end

end