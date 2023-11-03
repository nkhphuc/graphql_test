module Types
  module Queries
    module PostQueries
      extend ActiveSupport::Concern

      included do
        field :post, resolver: Resolvers::Posts::PostResolver
        field :posts, resolver: Resolvers::Posts::PostsResolver
      end
    end
  end
end
