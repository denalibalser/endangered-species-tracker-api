class User < ApplicationRecord
    has_secure_password
    has_many :animal_cards

    validates :username, :first_name, :last_name, :password, presence: true, allow_blank: false 
    validates :username, uniqueness: true
end
