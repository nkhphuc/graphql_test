module Types
  module Objects
    module PostContents
      class PostContentType < Types::BaseObject
        field :id, ID, null: false
        field :part, Int, null: true
        field :body, String, null: false
        field :post_id, Int, null: false
        field :post, Types::Objects::Posts::PostType, null: false
        field :created_at, GraphQL::Types::ISO8601DateTime, null: false
        field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
      end
    end
  end
end
