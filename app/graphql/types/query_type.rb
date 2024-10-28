# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :books_connection, Types::BookType.connection_type, null: false, description: "Returns a list of books with pagination"
    field :books, [Types::BookType], null: false, description: "Returns a list of books"

    def books_connection
      books = Book.all
      Connections::BookConnection.new(books)
    end

    def books
      Book.all
    end
  end
end
