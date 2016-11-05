class Product < ApplicationRecord
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
  has_many :order_details
end
