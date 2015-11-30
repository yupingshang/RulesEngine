require 'rails_helper'

RSpec.describe Array, type: :model do
  describe "#offset_sorted?" do
    it "returns true if the array is sorted without and offset" do
      expect([1,2,3,4].offset_sorted?).to be true
    end

    it "returns true if the array is sorted with one element displaced" do
      expect([4,1,2,3].offset_sorted?).to be true
    end

    it "returns true if the array is sorted with multiple elements displaced" do
      expect([4,5,6,1,2,3].offset_sorted?).to be true
    end

    it "returns false if part of the array is not sorted" do
      expect([2,3,4,6,5,1].offset_sorted?).to be false
    end
  end

  describe "#smallest_available_id" do
    it "returns the smallest available id" do
      expect([1,2,0,3,7,4,5,9,11].smallest_available_id).to eq 6
      expect([10,9,8,7,6,5,4,3,2,1].smallest_available_id).to eq 0
      expect([0,1,2,3].smallest_available_id).to eq 4
    end
  end
end
