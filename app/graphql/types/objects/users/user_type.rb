module Types
  module Objects
    module Users
      class UserType < Types::BaseObject
        field :id, ID, null: false
        field :provider, String, null: false
        field :uid, String, null: false
        field :reset_password_token, String, null: true
        field :reset_password_sent_at, String, null: true
        field :allow_password_change, Boolean, null: true
        field :remember_created_at, GraphQL::Types::ISO8601DateTime, null: true
        field :confirmation_token, String, null: true
        field :confirmed_at, GraphQL::Types::ISO8601DateTime, null: true
        field :confirmation_sent_at, GraphQL::Types::ISO8601DateTime, null: true
        field :unconfirmed_email, String, null: true
        field :failed_attempts, Integer, null: false
        field :unlock_token, String, null: true
        field :locked_at, GraphQL::Types::ISO8601DateTime, null: true
        field :name, String, null: true
        field :nickname, String, null: true
        field :image, String, null: true
        field :email, String, null: true
        field :tokens, String, null: true
        field :created_at, GraphQL::Types::ISO8601DateTime, null: false
        field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
      end
    end
  end
end
