class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body

  has_one :messageable, polymorphic: true, embed: :ids, include: true, key: :message
end
