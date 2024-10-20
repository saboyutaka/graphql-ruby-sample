module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :body, String

    field :author, Types::AuthorType, null: false
    def author
      dataloader.with(Sources::Association, :author).load(object)
    end
  end
end
