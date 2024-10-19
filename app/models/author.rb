class Author < ApplicationRecord
  belongs_to :book
  has_many :tags
end
