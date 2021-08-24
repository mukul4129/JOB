class Naukri < ApplicationRecord
    
    has_many :registrations
    validates :name, presence: true
end
