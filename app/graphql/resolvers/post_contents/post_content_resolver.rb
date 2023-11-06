module Resolvers
  module PostContents
    class PostContentResolver < BaseResolver
      type Types::Objects::PostContents::PostContentType, null: true
      description "Query a single post content"

      argument :id, ID, required: true

      def resolve(id:)
        PostContent.find_by(id:)
      end
    end
  end
end
