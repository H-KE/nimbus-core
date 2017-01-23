class Product < ApplicationRecord
  acts_as_commentable

  VALID_CATEGORY_NAMES = ["Indica",
                          "Sativa",
                          "Hybrid",
                          "Flowers",
                          "Pre-rolls",
                          "Prerolls",
                          "Concentrates",
                          "Cartridges",
                          "Cannabis Oil (Tears)",
                          "Edibles",
                          "Capsules",
                          "Extracts",
                          "Gear",
                          "Vaporizers"]

  def add_review!(params = {})
    comment = comments.create!(params)
    comment.update
    comment.save!
    comment
  end
end
