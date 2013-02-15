class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :messageable_id, :messageable_type
end
