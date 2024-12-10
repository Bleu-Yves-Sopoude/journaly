class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post counter_cache: true

   def recent_comment
    comments.order(created_at: :desc).limit(5)
   end

end
