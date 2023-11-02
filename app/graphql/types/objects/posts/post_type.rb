module Types
  module Objects
    module Posts
      class PostType < Types::BaseObject
        field :id, ID, null: false
        field :title, String, null: false
        field :body, String, null: false
        field :author, String, null: false
        field :written_year, Int, null: true
        field :created_at, GraphQL::Types::ISO8601DateTime, null: false
        field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
      end
    end
  end
end
