class Wreck < ActiveRecord::Base
  belongs_to :certification
  
  def to_s
		"The #{name} rests at #{depth} feet in #{location} and requires #{certification.name} certification."
	end
end