class Post < ActiveRecord::Base
  
  include User::Editable  

belongs_to :user 
belongs_to :topic ,:counter_cache => true
belongs_to :forum ,:counter_cache => true
validates_presence_of :user_id, :topic_id, :forum_id, :body

after_create :update_cached_fields
after_destroy :update_cached_fields

  def paged?
    posts_count > Post.per_page
  end
  
  def update_cached_fields
     topic.update_cached_post_fields(self)
  end
  
end
