class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true
  validates_length_of :comment, minimum: 6
  validates :movie, presence: true
  validates :list, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: 'has already been bookmarked in this list' }
end
