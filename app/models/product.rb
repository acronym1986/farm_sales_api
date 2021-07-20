class Product < ApplicationRecord
  belongs_to :farm_task
  belongs_to :stall
end
