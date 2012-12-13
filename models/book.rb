class Book < ActiveRecord::Base

  def to_s
    "#{title} was written by #{author} and I gave it a rating of " +
    "#{rating} out of 10  stars"
  end
end
