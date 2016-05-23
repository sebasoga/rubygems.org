class OwnersRequest < ActiveRecord::Base
  belongs_to :rubygem
  validates :rubygem, :contact_email, presence: true
end
