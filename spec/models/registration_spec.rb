require 'rails_helper'

RSpec.describe Registration, type: :model do


  describe "validations" do

    it "is invalid with more than 3 guest" do
      registration = Registration.new(guests_count: 4)
      registration.valid?

      expect(registration.errors).to have_key(:guests_count)

    end

  end


end
