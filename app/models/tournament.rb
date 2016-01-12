class Tournament < ActiveRecord::Base
  scope :ordered, -> { order(position: :asc) }
end
