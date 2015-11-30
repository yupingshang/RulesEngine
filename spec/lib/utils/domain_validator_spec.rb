require 'rails_helper'

RSpec.describe DomainValidator, type: :model do
  describe "#valid?" do
    context "given an invalid domain" do
      it "returns false" do
        expect(DomainValidator.valid?("domain with space.com")).to be false
        expect(DomainValidator.valid?("domain_underscore.com")).to be false
        expect(DomainValidator.valid?("domain%.com")).to be false
        expect(DomainValidator.valid?(".com")).to be false
        expect(DomainValidator.valid?("test.com:123")).to be false
        expect(DomainValidator.valid?("localhost")).to be false
        expect(DomainValidator.valid?("http://domain.com")).to be false
        expect(DomainValidator.valid?("https://domain.com")).to be false
      end
    end

    context "given a valid domain" do
      it "returns true" do
        expect(DomainValidator.valid?("test.com")).to be true
        expect(DomainValidator.valid?("test.co.uk")).to be true
        expect(DomainValidator.valid?("aDomainWithCaps.com")).to be true
        expect(DomainValidator.valid?("some-domain-123.com")).to be true
        expect(DomainValidator.valid?("it.ninja")).to be true
        expect(DomainValidator.valid?("x.co")).to be true
      end
    end
  end
end
