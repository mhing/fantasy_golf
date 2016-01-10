class Golfer < ActiveRecord::Base
  def display_name
    "#{first_name} #{last_name}"
  end
end
