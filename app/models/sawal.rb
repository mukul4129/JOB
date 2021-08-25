class Sawal < ApplicationRecord

    has_many :checkboxes, dependent: :destroy
    has_many :rounds, through: :checkboxes
end
