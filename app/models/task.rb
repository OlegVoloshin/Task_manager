class Task < ApplicationRecord
  validates :description, presence: true, length: { maximum: 4000 }
  validates :priority, presence: true, numericality: { only_integer: true }
  validates :deadline, presence: true
  validates :done, inclusion: { in: [ true, false ] }
  belongs_to :project
end
