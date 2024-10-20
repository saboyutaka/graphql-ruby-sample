module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String

    field :tags, [Types::TagType], null: true
    def tags
      dataloader.with(Sources::Association, :tags).load(object)
    end
  end
end
