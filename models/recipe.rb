class Recipe < ActiveRecord::Base
  
  has_many :ingredients
  
  validates :name, presence: true
  
  def to_s
    name
  end

end