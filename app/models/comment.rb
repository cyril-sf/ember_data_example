class Comment < Message
  attr_accessible :body, :messageable_id, :messageable_type
  belongs_to :messageable, polymorphic: true
end
