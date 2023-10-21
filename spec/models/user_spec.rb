require 'rails_helper'



RSpec.describe User, type: :model do
  it "returns the correct hero title" do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(1..99)
    
    user = User.create(nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq("#{kind} #{nickname} #{level}")
  end
end



class User < applicationRecord
  unum kind: [ :knight, :wizard ]
  validades :level, numericality: { greater_than: 0, less_than_or_equal_to: 99}

  def title 
    "#{self.kind} #{self.nickname} ##{self.level}"
  end
end