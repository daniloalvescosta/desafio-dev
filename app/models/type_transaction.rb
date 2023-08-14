# frozen_string_literal: true

class TypeTransaction < ApplicationRecord
  validates :description, uniqueness: true
end
