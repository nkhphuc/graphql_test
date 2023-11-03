module Resolvers
  module Posts
    class PostsResolver < BaseResolver
      type Types::Objects::Posts::PostType.collection_type, null: true
      description "Query a collection of posts"

      def resolve
        Post.all
      end
    end
  end
end
