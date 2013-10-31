 class Show < ActiveRecord::Base 
  belongs_to :network

  #validates_presence_of :name
 def to_s
  "#{name}, #{day_of_week}, #{hour_of_day}, #{network}"
 end

end
 