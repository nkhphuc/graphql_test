class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :trackable
    #, :confirmable, :omniauthable
  include GraphqlDevise::Authenticatable
end
