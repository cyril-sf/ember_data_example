class Comment < ActiveRecord::Base
  attr_accessible :body, :messageable_id, :messageable_type
  belongs_to :messageable, polymorphic: true
  belongs_to :user
end
