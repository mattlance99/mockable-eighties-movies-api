class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :release_year, :image_url
  has_many :comments
end
