class Review < ApplicationRecord
  belongs_to :destination

  validates :rating, presence: true
  validates :content_body, presence: true
  validates_length_of :content_body, minimum:50, maximum: 2000
  validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end