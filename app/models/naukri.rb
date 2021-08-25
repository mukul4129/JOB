class Naukri < ApplicationRecord
    
    has_many :registrations, dependent: :destroy
    has_many :rounds, dependent: :destroy


    validates :name, presence: true
end
