module Types
  module Mutations
    module PostContentMutations
      extend ActiveSupport::Concern

      included do
        field :post_content_delete, mutation: ::Mutations::PostContents::PostContentDelete
        field :post_content_update, mutation: ::Mutations::PostContents::PostContentUpdate
        field :post_content_create, mutation: ::Mutations::PostContents::PostContentCreate
      end
    end
  end
end
