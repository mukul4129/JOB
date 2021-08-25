class Round < ApplicationRecord
  belongs_to :naukri
  has_many :candidates
  has_many :questions
  has_many :checkboxes, dependent: :destroy
  has_many :sawal, through: :checkboxes

  validates :name, presence: true

  PAPER_TYPE = [
    'paper',
    'interviewer'
  ]

  validates :option_type,
            inclusion: { in: PAPER_TYPE }
end
