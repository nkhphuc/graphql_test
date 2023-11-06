module Types
  module Queries
    module PostContentQueries
      extend ActiveSupport::Concern

      included do
        field :post_content, resolver: Resolvers::PostContents::PostContentResolver
        field :post_contents, resolver: Resolvers::PostContents::PostContentsResolver
      end
    end
  end
end
