class Kind < ApplicationRecord
  has_many :codes,dependent: :destroy


end
