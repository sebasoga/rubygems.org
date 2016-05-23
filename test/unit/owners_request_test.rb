require 'test_helper'

class OwnersRequestTest < ActiveSupport::TestCase
  should belong_to(:rubygem)

  context "validations" do
    subject { build(:owners_request) }

    should "have a valid factory" do
      assert subject.valid?
    end

    should "be invalid when rubygem is not present" do
      subject.rubygem = nil
      refute subject.valid?
    end

    should "be invalid when contact_email is not present" do
      subject.contact_email = nil
      refute subject.valid?
    end
  end
end
