class Subreddit < ApplicationRecord
  has_many :posts
  
  validates :title, presence: true, uniqueness: true
end
