module Resolvers
  module Posts
    class PostResolver < BaseResolver
      type Types::Objects::Posts::PostType, null: true
      description "Query a single post"

      argument :id, ID, required: true

      def resolve(id:)
        Post.find_by(id:)
      end
    end
  end
end
