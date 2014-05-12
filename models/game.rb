class Game < ActiveRecord::Base

  validates_presence_of :name, :system, :esrb_rating, :studio

  def to_s
    "#{name} - Developed by #{studio}. Rated: #{esrb_rating}"
  end
end
