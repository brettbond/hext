require 'rails_helper'

describe HexMessage, :type => :model do
  it "normalizes phone numbers" do
    message = HexMessage.create!(from: "415-613-3872", to: "415-407-5745")
    expect(message.normalize_from).to eq("14156133872")
    expect(message.normalize_to).to eq("14154075745")

    message = HexMessage.create!(from: " 415-613-3872", to: "415-407-5745  ")
    expect(message.normalize_from).to eq("14156133872")
    expect(message.normalize_to).to eq("14154075745")
  end
end
