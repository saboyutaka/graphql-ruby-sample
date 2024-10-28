# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :books, [Types::BookType], null: false, description: "Returns a list of books"

    def books
      Book.all
    end
  end
end
