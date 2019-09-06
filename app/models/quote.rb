class Quote < ApplicationRecord
  validates :quote, presence: true, length: { maximum: 280, minimum: 5 }
  validates :author, presence: true, length: { maximum: 50, minimum: 3 }
end
