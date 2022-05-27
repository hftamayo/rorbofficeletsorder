class Product < ApplicationRecord
  belongs_to :providers
  belongs_to :prodlines
end
