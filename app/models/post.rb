class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments
  has_many :likes

  def count
    postCounter
  end

  def rencent_post
    post.comments.order(created_at: :desc).limit(5)
  end
end
