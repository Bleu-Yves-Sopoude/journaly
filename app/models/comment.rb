class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

   def recent_comment
    comments.order(created_at: :desc).limit(5)
   end

   def update_post_comments
    post.update(comments_counter: post.comments.count)
   end

end
