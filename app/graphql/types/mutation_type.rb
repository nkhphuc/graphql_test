# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    include Types::Mutations::PostMutations
  end
end
