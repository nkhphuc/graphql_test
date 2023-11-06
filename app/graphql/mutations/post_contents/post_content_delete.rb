# frozen_string_literal: true

module Mutations
  module PostContents
    class PostContentDelete < BaseMutation
      description "Deletes a post content by ID"

      field :post_content, Types::Objects::PostContents::PostContentType, null: false

      argument :id, ID, required: true

      def resolve(id:)
        post_content = ::PostContent.find(id)
        raise GraphQL::ExecutionError.new "Error deleting post content", extensions: post_content.errors.to_hash unless post_content.destroy

        { post_content: post_content }
      end
    end
  end
end
