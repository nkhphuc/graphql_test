module Types
  module Queries
    module UserQueries
      extend ActiveSupport::Concern

      included do
        field :current_user, resolver: Resolvers::Users::CurrentUserResolver
      end
    end
  end
end
