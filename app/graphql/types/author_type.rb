module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :tags, [Types::TagType], null: true
  end
end
