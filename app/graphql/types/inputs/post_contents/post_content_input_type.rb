# frozen_string_literal: true

module Types
  module Inputs
    module PostContents
      class PostContentInputType < Types::BaseInputObject
        argument :id, ID, required: false
        argument :part, Integer, required: false
        argument :body, String, required: false
        argument :author, String, required: false
        argument :post_id, Integer, required: false
      end
    end
  end
end
