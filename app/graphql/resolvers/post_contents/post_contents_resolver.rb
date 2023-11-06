module Resolvers
  module PostContents
    class PostContentsResolver < BaseResolver
      type Types::Objects::PostContents::PostContentType.collection_type, null: true
      description "Query a collection of post contents"

      def resolve
        PostContent.all
      end
    end
  end
end
