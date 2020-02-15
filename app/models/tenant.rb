class Tenant < ApplicationRecord
    belongs_to :property
    has_many :ratings 
    has_many :past_properties, through: :ratings, source: :property
end
