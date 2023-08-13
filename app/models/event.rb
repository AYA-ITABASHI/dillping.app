class Event < ApplicationRecord
  has_many :tasks
  belongs_to :member
end
