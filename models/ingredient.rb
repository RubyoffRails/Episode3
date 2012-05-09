class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  
  validates :name, presence: true
    
  def to_s
    name
  end
end