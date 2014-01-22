class Review < ActiveRecord::Base
  def to_s
    "#{movie}, Reviewed by: #{reviewer}, Rating: #{rating}, Review: #{synopsis}"
  end
end