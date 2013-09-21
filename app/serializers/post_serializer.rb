class PostSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :comments, embed: :ids, include: true
end
