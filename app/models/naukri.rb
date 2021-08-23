class Naukri < ApplicationRecord
    
    has_many :registrations #,  dependent: destroy
end
