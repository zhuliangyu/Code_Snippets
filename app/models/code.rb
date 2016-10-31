class Code < ApplicationRecord
  belongs_to :user
  belongs_to :kind
  # validates :user_id,presence: true
  validates :title,presence: true
  validates :work,presence: true


end
