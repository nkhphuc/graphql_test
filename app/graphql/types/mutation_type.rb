# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :post_content_delete, mutation: ::Mutations::PostContents::PostContentDelete
    field :post_content_update, mutation: ::Mutations::PostContents::PostContentUpdate
    field :post_content_create, mutation: ::Mutations::PostContents::PostContentCreate
    include Types::Mutations::PostMutations
  end
end
