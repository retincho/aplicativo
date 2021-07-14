class Locality < ApplicationRecord
  has_paper_trail
  belongs_to :department, required: true
  
end
