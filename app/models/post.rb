class Post < Message
  attr_accessible :title
  has_many :comments, as: :messageable
end
