class Assessment < ApplicationRecord
  belongs_to :user
  validates :candidate_full_name, presence: true
  validates :ats_link, presence: true
  validates :q1_correct, presence: true
  validates :q2_correct, presence: true
  validates :q3_correct, presence: true
  validates :q4_correct, presence: true
  validates :q5_correct, presence: true
  validates :q6_correct, presence: true
  validates :q7_correct, presence: true
  validates :q8_correct, presence: true
  validates :q9_correct, presence: true
  validates :q10_correct, presence: true
  validates :q11_correct, presence: true
  validates :q12_correct, presence: true
  validates :q13_correct, presence: true
end
