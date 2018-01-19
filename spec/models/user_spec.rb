require 'rails_helper'

RSpec.describe User, type: :model do
  #
  # describe "association with event" do
  #   let(:user) {create :user}
  #   let!(:event) {create :event, user: user}
  #
  #   it "has many events" do
  #     event1 = user.events.new (name: "jjj")
  #     event2 = user.events.new (name: "kkk")
  #
  #     expect(user.events).to include(event1)
  #     expect(user.events).to include(event2)
  #   end
  #
  # end
  #
  # describe "association with registration" do
  #
  #   it {is_expected.to belong_to :registration}
  #   end

    describe "association with registration" do
      let(:guest_user) { create :user, email: "guest@user.com" }
      let(:host_user) { create :user, email: "host@user.com" }

      let!(:event) { create :event, user: host_user }
      let!(:registration) { create :registration, event: event, user: guest_user }

      it "has registrations" do
        expect(guest_user.visited_events).to include(event)
      end
    end

end
