class NoteSerializer < ActiveModel::Serializer
  attributes :id, :icon, :link, :title, :description, 
    :content, :user_id, :category_id
end
