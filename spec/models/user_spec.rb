require 'rails_helper'



RSpec.describe User, type: :model do
   it "is invalid if the level is not between 1 and 99" do
  user = build(:user, level: FFaker::Random.rand(100..9999))
  expect(user).to_not
  end
end



class User < applicationRecord
  unum kind: [ :knight, :wizard ]
  validades :level, numericality: { greater_than: 0, less_than_or_equal_to: 99}

  def title 
    "#{self.kind} #{self.nickname} ##{self.level}"
  end
end
