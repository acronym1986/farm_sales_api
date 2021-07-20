class Stall < ApplicationRecord
  belongs_to :user
  has_many :sales
  has_many :products
  has_many :farm_tasks, through: :products
end
