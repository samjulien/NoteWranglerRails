class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :twitter_handle, :site, :email

  embed :ids
  has_many :notes
end
