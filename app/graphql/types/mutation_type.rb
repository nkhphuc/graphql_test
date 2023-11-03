# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :post_create, mutation: Mutations::Posts::PostCreate
    field :post_update, mutation: Mutations::Posts::PostUpdate
    field :post_delete, mutation: Mutations::Posts::PostDelete
  end
end
