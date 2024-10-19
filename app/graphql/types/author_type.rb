module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
  end
end
