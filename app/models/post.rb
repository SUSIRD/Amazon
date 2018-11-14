class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  # :phone
  # validates :phone, numericality: { only_integer: true }

  # :points
  # validates :points, numericality: { greater_than: 5 }
  # validates :points, numericality: { greater_than_or_equal_to: 5 }
  # validates :points, numericality: { equal_to: 5 }
  # validates :points, numericality: { less_than: 5 }
end
