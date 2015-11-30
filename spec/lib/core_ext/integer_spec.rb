require 'rails_helper'

RSpec.describe Integer, type: :model do
  describe "#super_power_number?" do
    it "returns false if the integer is not a super power number" do
      expect(123.super_power_number?).to be false
    end

    it "returns true if the number is a super power number" do
      expect(153.super_power_number?).to be true
      expect(1634.super_power_number?).to be true
    end
  end
end
