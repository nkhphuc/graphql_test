# frozen_string_literal: true

module Mutations
  module Posts
    class PostUpdate < BaseMutation
      description "Updates a post by id"

      field :post, Types::Objects::Posts::PostType, null: false

      argument :id, ID, required: true
      argument :post_input, Types::Inputs::Posts::PostInputType, required: true

      def resolve(id:, post_input:)
        post = ::Post.find(id)
        raise GraphQL::ExecutionError.new "Error updating post", extensions: post.errors.to_hash unless post.update(**post_input)

        { post: post }
      end
    end
  end
end
