class NoteSerializer < ActiveModel::Serializer
  attributes :id, :icon, :link, :title, :description, :content
end
