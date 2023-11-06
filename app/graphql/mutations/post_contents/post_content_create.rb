# frozen_string_literal: true

module Mutations
  module PostContents
    class PostContentCreate < BaseMutation
      description "Creates a new post content"

      field :post_content, Types::Objects::PostContents::PostContentType, null: false

      argument :post_content_input, Types::Inputs::PostContents::PostContentInputType, required: true

      def resolve(post_content_input:)
        post_content = ::PostContent.new(**post_content_input)
        raise GraphQL::ExecutionError.new "Error creating post content", extensions: post_content.errors.to_hash unless post_content.save

        { post_content: post_content }
      end
    end
  end
end
