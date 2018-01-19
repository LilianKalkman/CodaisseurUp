require 'rails_helper'

RSpec.describe Registration, type: :model do


  describe "validations" do
    let!(:user) {create :user}
    let!(:event){create :event}

    it "is invalid with more than 3 guest" do
      registration = Registration.new(user: user, event: event, guests_count: 4)
      registration.valid?
      expect(registration.errors).to have_key(:guests_count)
    end
  end
    # describe "validations" do
    #
    #    # registration = Registration.new(guests_count: 4)
    #
    #   it {is_expected.to validate_acceptance_of(:guests_count)}
    # end




end
