class Post < ActiveRecord::Base
  attr_accessible :title
  belongs_to :user
  has_many :comments, as: :messageable
end
