class Sport < ActiveRecord::Base

  def to_s
    "#{name}"
  end
end
