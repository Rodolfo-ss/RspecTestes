require 'rails_helper'

RSpec.describe User, type: :model do
 

  end
end


class User < applicationRecord
  unum kind: [ :knight, :wizard ]
  validades :level, numericality: { greater_than: 0, less_than_or_equal_to: 99}

  def title 
    "#{self.kind} #{self.nickname} ##{self.level}"
  end
end