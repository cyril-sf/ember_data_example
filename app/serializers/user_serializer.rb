class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :messages, polymorphic: true, embed: :ids, include: true
end
