class Event < ApplicationRecord

    belongs_to :user
    has_and_belongs_to_many :categories
    has_many :photos
    has_many :registrations, dependent: :destroy
    has_many :guests, through: :registrations, source: :user

    validates :name, presence: true
    validates :description, presence: true, length: { maximum: 500 }
    # validates :starts_at, presence: true
    # validates :ends_at, presence: true, date: { after_or_equal_to:  :starts_at}

    def self.active
      where(active: true)
    end

    def bargain?
      price < 30.00
    end

    def self.order_by_price
      order :price
    end

    def self.order_by_letter
      all.sort
    end


end
