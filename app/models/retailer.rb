# frozen_string_literal: true

class Retailer < ApplicationRecord
  self.per_page = 5

  def self.search(name: nil)
    if name
      where('"Name" ILIKE ?', "%#{name}%")
    else
      all
    end
  end
end
