module Types
  module Mutations
    module PostMutations
      extend ActiveSupport::Concern

      included do
          field :post_create, mutation: ::Mutations::Posts::PostCreate
          field :post_update, mutation: ::Mutations::Posts::PostUpdate
          field :post_delete, mutation: ::Mutations::Posts::PostDelete
      end
    end
  end
end
