class Book < ActiveRecord::Base
  belongs_to :author

  validates_presence_of :name, :author, :publication_year

  def to_s
    "#{name} (#{publication_year}) by #{author}"
  end
end
