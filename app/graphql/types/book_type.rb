module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :body, String
    field :author, Types::AuthorType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
