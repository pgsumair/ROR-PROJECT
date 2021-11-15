class Publisher < ApplicationRecord
    belongs_to :holder, polymorphic: true
end
