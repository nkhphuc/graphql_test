module Resolvers
  module Users
    class CurrentUserResolver < BaseResolver
      type Types::Objects::Users::UserType, null: true
      description 'The currently logged in user'

      def resolve
        context[:current_user]
      end
    end
  end
end
