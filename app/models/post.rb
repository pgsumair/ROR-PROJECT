class Post < ApplicationRecord
    has_many :publishers, as: :holder
end
