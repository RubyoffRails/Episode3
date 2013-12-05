class Recipe < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy

  validates_presence_of :name

  def self.search(name)
    where(" name ILIKE ?", "%#{name}%")
  end

  def to_s
    "#{name}, [#{ingredients.collect(&:name).join(', ')}]"
  end
end
