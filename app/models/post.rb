class Post < ApplicationRecord
  extend FriendlyId
  include PgSearch

  validates :title, :author, :body, presence: true

  friendly_id :title, use: :slugged

  has_many :comments, dependent: :destroy

  pg_search_scope :search, 
    against: %i[title author body],
    associated_against: { comments: %i[body] }
end
