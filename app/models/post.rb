class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :author, presence: true
  validates :title, length:{minimum: 3}
  validates :body, length:{minimum: 10}
end
