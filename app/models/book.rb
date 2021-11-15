class Book < ApplicationRecord
    belongs_to :author index: true, foreign_key: true
end
