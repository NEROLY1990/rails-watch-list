class Bookmark < ApplicationRecord
  belongs_to :List
  belongs_to :Movie
  validates :comment, presence: true, lenght: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }

end
