class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
    #, :confirmable, :omniauthable, :trackable
  include GraphqlDevise::Authenticatable
end
