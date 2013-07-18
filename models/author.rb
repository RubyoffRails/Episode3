class Author < ActiveRecord::Base
  has_many :books

  def to_s
    "#{name}, with #{books.count} book(s)"
  end
end