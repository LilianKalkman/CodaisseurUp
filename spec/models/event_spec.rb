require 'rails_helper'

RSpec.describe Event, type: :model do

  describe "validations" do

    it "is invalid without a name" do
      event = Event.new(name: "")
      event.valid?
      expect(event.errors).to have_key(:name)
    end

    it "is invalid without description" do
      event = Event.new(description: "a"*501)
      event.valid?
      expect(event.errors).to have_key(:description)
    end
  end

# MET SHOULDE MATCHERS:
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description)}
  end

  describe "#bargain?" do
    let(:bargain_event) {create :event, price:20.00}
    let(:non_bargain_event) {create :event, price:200.00}

    it "returns true if the price is smaller than 30" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?). to eq(false)
    end
  end

  describe ".order_by_price" do
    let!(:event1) { create :event, price: 10.00}
    let!(:event2) {create :event, price:15.00}
    let!(:event3) {create :event, price:300.00}

    it "returns a sorted array of events by price" do
    expect(Event.order_by_price).to eq([event1, event2, event3])
    end
  end

  describe ".order_by_letter" do
  let!(:event1) {create :event, name: "Anna"}
  let!(:event2) {create :event, name: "Bert"}
  let!(:event3) {create :event, name: "Claire"}

    it "returns a sorted array of events by letter" do
      expect(Event.order_by_letter).to eq([event1, event2,event3])
    end
  end

  # describe "association with user" do
  #   let(:user1) {create :user}
  #
  #   it "event belongs to a user" do
  #     expect(event.user).to eq(user1)
  #   end
  # end


  #SHOULDA WAY:

  describe "association with user" do
    it {is_expected.to belong_to :user}
  end


  describe "association with registration" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:event) { create :event, user: host_user }
    let!(:registration) { create :registration, event: event, user: guest_user }

    it "has guests" do
      expect(event.guests).to include(guest_user)
    end
  end

  # describe "association with registration" do
  #     it {is_expected.to belong_to :registration}
  # end


end
