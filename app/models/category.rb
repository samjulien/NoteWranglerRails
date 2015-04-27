class Category < ActiveRecord::Base
  has_many :notes, dependent: :destroy
end
