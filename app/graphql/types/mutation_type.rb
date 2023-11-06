# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject

    include Types::Mutations::PostMutations
    include Types::Mutations::PostContentMutations
  end
end
