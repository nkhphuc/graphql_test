class Post < ApplicationRecord
    has_many :post_contents, dependent: :destroy
end
