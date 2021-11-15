class Article < ApplicationRecord
    has_many :publishers, as: :holder
    before_validation :check_valid
    after_validation :check_aftervalid
    validates :title,:body, :presence => true
    validates :title,:length =>{:minimum =>3}
    validates :title, :uniqueness => true
    
    def check_valid
        self.title = self.title.gsub(/[^A-z]/, "*")
    end
    def check_aftervalid
        if self.title.include? "car"
            puts "String includes 'car'"
        end
    end
end
