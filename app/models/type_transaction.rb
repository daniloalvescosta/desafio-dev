class TypeTransaction < ApplicationRecord
  validates :description, uniqueness: true
end
