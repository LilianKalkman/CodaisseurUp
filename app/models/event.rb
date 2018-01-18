class Event < ApplicationRecord

    belongs_to :user
    has_and_belongs_to_many :categories
    has_many :photos

    validates :name, presence: true
    validates :description, presence: true, length: { maximum: 500 }
    # validates :starts_at, presence: true
    # validates :ends_at, presence: true, date: { after_or_equal_to:  :starts_at}


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
