class Round < ApplicationRecord
  belongs_to :naukri
  has_many :candidates

  validates :name, presence: true

  PAPER_TYPE = [
    'paper',
    'interviewer'
  ]

  validates :option_type,
            inclusion: { in: PAPER_TYPE }
end
