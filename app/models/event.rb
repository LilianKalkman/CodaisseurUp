class Event < ApplicationRecord

    belongs_to :user

    validates :name, presence: true
    validates :description, presence: true, length: { maximum: 500 }
    # validates :starts_at, presence: true
    # validates :ends_at, presence: true, date: { after_or_equal_to:  :starts_at}

end
