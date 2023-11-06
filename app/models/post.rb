class Post < ApplicationRecord
    has_many :post_contents, dependent: :destroy
    accepts_nested_attributes_for :post_contents
end
