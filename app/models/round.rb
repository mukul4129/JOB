class Round < ApplicationRecord
  belongs_to :naukri

  validates :name, presence: true
end
