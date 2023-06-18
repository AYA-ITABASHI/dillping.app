class Event < ApplicationRecord
  has_many:tasks
  belongs_to :mem
end
