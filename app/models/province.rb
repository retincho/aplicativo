class Province < ApplicationRecord
  has_paper_trail
  belongs_to :country, required: true
  
end
