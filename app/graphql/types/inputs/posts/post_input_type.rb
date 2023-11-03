# frozen_string_literal: true

module Types
  module Inputs
    module Posts
      class PostInputType < Types::BaseInputObject
        argument :id, ID, required: false
        argument :title, String, required: false
        argument :body, String, required: false
        argument :author, String, required: false
        argument :written_year, Integer, required: false
        argument :created_at, GraphQL::Types::ISO8601DateTime, required: false
        argument :updated_at, GraphQL::Types::ISO8601DateTime, required: false
      end
    end
  end
end
