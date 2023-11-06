# frozen_string_literal: true

module Mutations
  module PostContents
    class PostContentUpdate < BaseMutation
      description "Updates a post content by id"

      field :post_content, Types::Objects::PostContents::PostContentType, null: false

      argument :id, ID, required: true
      argument :post_content_input, Types::Inputs::PostContents::PostContentInputType, required: true

      def resolve(id:, post_content_input:)
        post_content = ::PostContent.find(id)
        raise GraphQL::ExecutionError.new "Error updating post content", extensions: post_content.errors.to_hash unless post_content.update(**post_content_input)

        { post_content: post_content }
      end
    end
  end
end
