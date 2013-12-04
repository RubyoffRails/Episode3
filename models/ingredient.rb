class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  validates_presence_of :name

  def to_s
    name
  end
end
