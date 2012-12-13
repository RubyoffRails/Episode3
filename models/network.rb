class Network < ActiveRecord::Base
  has_many :shows

  def to_s
    name
  end
end
