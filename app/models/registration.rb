class Registration < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :guests_count, presence: true, acceptance: {accept: 1...3}

end
