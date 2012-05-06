class Author < ActiveRecord::Base
  has_many :books

  validates_presence_of :first_name, :last_name, :birthdate

  def to_s
    "#{first_name} #{last_name}"
  end
end
