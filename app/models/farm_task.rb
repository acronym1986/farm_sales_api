class FarmTask < ApplicationRecord
    has_many :products 
    has_many :stalls, through: :products
end
