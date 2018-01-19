class Registration < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :guests_count, presence: true, numericality: {greater_than_or_equal_to: 3}

end
